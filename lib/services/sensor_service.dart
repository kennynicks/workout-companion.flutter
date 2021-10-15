import 'dart:async';

import '../models/sensors/sensor.dart';

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
    if (connectionEvent.state == ConnectionState.disconnected) {
      unregisterSensor(connectionEvent.sensor);
      //TODO reconnect
    }
  }

  void unregisterSensor(Sensor sensor) {
    _sensors.remove(sensor);
    _sensorSubscriptions[sensor.id]?.cancel();
  }

  void startScan() {}

  void stopScan() {}

  Future<void> connectSensor(Sensor sensor) async {
    await sensor.btDevice.connect(autoConnect: false);
    _sensors.add(sensor);
    _registerForConnectionStateEvents(sensor);
  }

  void disconnectSensor(Sensor sensor) {}
}
