import 'dart:async';
import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/models/sensors/connection_event.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

@singleton
class SensorService extends Disposable {
  final List<Sensor> _sensors = [];
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

  void onConnectionEvent(ConnectionEvent connectionEvent) {
    log("On Connection Event $connectionEvent");
    connectionEvent.state.maybeWhen(
      disconnected: () {
        unregisterSensor(connectionEvent.sensor);
        //TODO reconnect
      },
      orElse: () {},
    );
  }

  void unregisterSensor(Sensor sensor) {
    _sensors.remove(sensor);
    _sensorSubscriptions[sensor.id]?.cancel();
    _connectedSensorsStreamController.add(_sensors);
  }

  void _onScanResults(List<ScanResult> scanResults) {
    log("_onScanResults $scanResults");
    _discoveredSensorsStreamController.add(scanResults.map((ScanResult scanResult) => Sensor.fromScanResult(scanResult)).toList());
  }

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

  Future connectSensor(Sensor sensor) async {
    await sensor.btDevice.connect(autoConnect: false);
    _sensors.add(sensor);
    _registerForConnectionStateEvents(sensor);
    _connectedSensorsStreamController.add(_sensors);
  }

  Future disconnectSensor(Sensor sensor) async {
    unregisterSensor(sensor);
    await sensor.btDevice.disconnect();
  }

  @override
  FutureOr onDispose() {
    //TODO unregister sensors
    _scanSubscription.cancel();
  }
}
