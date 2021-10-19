import 'dart:async';

import 'package:workout_companion_flutter/models/sensors/connection_event.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

class SensorService {
  final List<Sensor> _sensors = List.empty();
  final Map<String, StreamSubscription> _sensorSubscriptions = <String, StreamSubscription>{};

  final StreamController<List<Sensor>> _discoveredSensorsStreamController = StreamController<List<Sensor>>();
  Stream<List<Sensor>>? _discoveredSensorsStream;

  final StreamController<List<Sensor>> _connectedSensorsStreamController = StreamController<List<Sensor>>();
  Stream<List<Sensor>>? _connectedSensorsStream;

  Stream<List<Sensor>> get discoveredSensorsStream {
    _discoveredSensorsStream ??= _discoveredSensorsStreamController.stream.asBroadcastStream();
    return _discoveredSensorsStream!;
  }

  Stream<List<Sensor>> get connectedSensorsStream {
    _connectedSensorsStream ??= _connectedSensorsStreamController.stream.asBroadcastStream();
    return _connectedSensorsStream!;
  }

  void _registerForConnectionStateEvents(Sensor sensor) {
    _sensorSubscriptions[sensor.id] = sensor.stateStream.listen(onConnectionEvent);
  }

  void onConnectionEvent(ConnectionEvent connectionEvent) {
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
  }

  void startScan() {
    //TODO
  }

  void stopScan() {
    //TODO
  }

  Future<void> connectSensor(Sensor sensor) async {
    await sensor.btDevice.connect(autoConnect: false);
    _sensors.add(sensor);
    _registerForConnectionStateEvents(sensor);
  }

  void disconnectSensor(Sensor sensor) {
    //TODO
  }
}
