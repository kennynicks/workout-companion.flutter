import 'package:workout_companion_flutter/core/constants/service_uuids.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

extension SensorTypeParsing on List<String> {
  SensorType toSensorType() {
    if (FITNESS_MACHINE_SENSOR_ADVERTISEMENT_SERVICES
        .every((serviceUuid) => this.contains(serviceUuid))) {
      return SensorType.FitnessMachine;
    }
    if (HEART_RATE_SENSOR_ADVERTISEMENT_SERVICES
        .every((serviceUuid) => this.contains(serviceUuid))) {
      return SensorType.HeartRate;
    }
    if (CADENCE_SENSOR_ADVERTISEMENT_SERVICES
        .every((serviceUuid) => this.contains(serviceUuid))) {
      return SensorType.Cadence;
    }
    return SensorType.Unknown;
  }
}
