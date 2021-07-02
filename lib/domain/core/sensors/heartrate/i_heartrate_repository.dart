import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';

abstract class IHeartrateRepository {
  Future startMonitoring(Sensor sensor);
  void stopMonitoring();
}
