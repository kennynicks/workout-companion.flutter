import 'package:workout_companion_flutter/models/sensors/sensor.dart';

abstract class SensorDataProvider<T> {
  Sensor? _sensor;
  // final StreamController<T> _discoveredSensorsStreamController = StreamController<T>();
  // Stream<List<Sensor>>? _discoveredSensorsStream;

  void setActiveSensor(Sensor sensor) {}

  void removeSensor() {}
}
