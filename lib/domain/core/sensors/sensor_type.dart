import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_companion_flutter/domain/core/sensors/service_uuids.dart';

part 'sensor_type.freezed.dart';

@freezed
abstract class SensorType with _$SensorType {
  const factory SensorType.unknown() = Unknown;
  const factory SensorType.cadence() = Cadence;
  const factory SensorType.heartrate() = Heartrate;
  const factory SensorType.fitnessmachine() = Fitnessmachine;
  factory SensorType.fromServiceUuids(List<String> serviceUuids) {
    if (FITNESS_MACHINE_SENSOR_ADVERTISEMENT_SERVICES
        .every((serviceUuid) => serviceUuids.contains(serviceUuid))) {
      return const SensorType.fitnessmachine();
    }
    if (HEART_RATE_SENSOR_ADVERTISEMENT_SERVICES
        .every((serviceUuid) => serviceUuids.contains(serviceUuid))) {
      return const SensorType.heartrate();
    }
    if (CADENCE_SENSOR_ADVERTISEMENT_SERVICES
        .every((serviceUuid) => serviceUuids.contains(serviceUuid))) {
      return const SensorType.cadence();
    }
    return const SensorType.unknown();
  }
}
