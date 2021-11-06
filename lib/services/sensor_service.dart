import 'dart:async';
import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/models/sensors/connection_event.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

@singleton
class SensorService extends Disposable {
  final Set<Sensor> _connectedSensors = {};
  final Set<Sensor> _discoveredSensors = {};
  final Map<String, StreamSubscription> _sensorSubscriptions = <String, StreamSubscription>{};
  final FlutterBlue flutterBlue;
  late final Stream<List<Sensor>> discoveredSensorsStream;
  late final Stream<List<Sensor>> connectedSensorsStream;
  late final StreamSubscription _scanSubscription;
  SensorService({required this.flutterBlue}) {
    discoveredSensorsStream = _discoveredSensorsStreamController.stream.asBroadcastStream();
    connectedSensorsStream = _connectedSensorsStreamController.stream.asBroadcastStream();
    _scanSubscription = flutterBlue.scanResults.listen(_onScanResults);
  }

  final StreamController<List<Sensor>> _discoveredSensorsStreamController = StreamController<List<Sensor>>();

  final StreamController<List<Sensor>> _connectedSensorsStreamController = StreamController<List<Sensor>>();

  void _registerForConnectionStateEvents(Sensor sensor) {
    _sensorSubscriptions[sensor.id] = sensor.stateStream.listen(onConnectionEvent);
  }

  void _updateDiscoveredSensors() {
    _discoveredSensorsStreamController.add(sortList(_discoveredSensors.toList()));
  }

  void _updateConnectedSensors() {
    _connectedSensorsStreamController.add(sortList(_connectedSensors.toList()));
  }

  void onConnectionEvent(ConnectionEvent connectionEvent) {
    log("On Connection Event $connectionEvent", time: DateTime.now());
    connectionEvent.state.when(disconnected: () {
      log("lost connection to sensor ${connectionEvent.sensor.id} ${DateTime.now()}");
      unregisterSensor(connectionEvent.sensor);
      //TODO reconnect
    }, connected: () {
      log("got connection for sensor ${connectionEvent.sensor.id} ${DateTime.now()}");
    });
  }

  List<Sensor> sortList(List<Sensor> sensors) {
    sensors.sort((a, b) {
      return a.compareTo(b);
    });
    return sensors;
  }

  void unregisterSensor(Sensor sensor) {
    log("unregistering sensor ${sensor.id}");
    _connectedSensors.remove(sensor);
    _sensorSubscriptions[sensor.id]?.cancel();
    _updateConnectedSensors();
  }

  Future _onScanResults(List<ScanResult> scanResults) async {
    final Set<Sensor> sensors = scanResults.map((ScanResult scanResult) => Sensor.fromScanResult(scanResult)).toSet();
    final List<Sensor> discoveredSensors = [];
    for (final Sensor sensor in sensors) {
      final BluetoothDeviceState connectionState = await sensor.btDevice.state.first;
      if (connectionState == BluetoothDeviceState.connected || connectionState == BluetoothDeviceState.connecting) {
        addSensorWatchers(sensor);
      } else {
        discoveredSensors.add(sensor);
      }
    }
    _discoveredSensors.clear();
    _discoveredSensors.addAll(discoveredSensors);
    _updateDiscoveredSensors();
  }

//TODO VALUES EMITTEN
  Future startScan(List<Guid> serviceGuids) async {
    log("In start scan. Is scanning = ${await flutterBlue.isScanning.first}");
    if (!await flutterBlue.isScanning.first) {
      log("Starting scan");
      flutterBlue.startScan(withServices: serviceGuids);
    }
  }

  Future stopScan() async {
    await flutterBlue.stopScan();
  }

  void addSensorWatchers(Sensor sensor) {
    log("adding sensor watchers for ${sensor.id}");
    _connectedSensors.add(sensor);
    _registerForConnectionStateEvents(sensor);
    _updateConnectedSensors();
  }

  Future connectSensor(Sensor sensor) async {
    log("connecting sensor ${sensor.id}");
    try {
      await sensor.btDevice.connect(autoConnect: false, timeout: const Duration(seconds: 10));
      log("connected sensor ${sensor.id}");
      addSensorWatchers(sensor);
      _discoveredSensors.remove(sensor);
      _updateDiscoveredSensors();
    } catch (err) {
      log("Timeout while connecting", error: err);
    }
  }

  Future disconnectSensor(Sensor sensor) async {
    log("disconnecting sensor ${sensor.id}");
    unregisterSensor(sensor);
    await sensor.btDevice.disconnect();
    log("sensor disconnected");
    _discoveredSensors.add(sensor);
    _updateDiscoveredSensors();
  }

  @override
  FutureOr onDispose() {
    for (final sensor in _connectedSensors) {
      unregisterSensor(sensor);
    }
    _scanSubscription.cancel();
  }
}
