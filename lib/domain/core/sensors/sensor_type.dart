import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_type.freezed.dart';

@freezed
abstract class SensorType with _$SensorType {
  const factory SensorType.unknown() = Unknown;
  const factory SensorType.cadence() = Cadence;
  const factory SensorType.heartrate() = Heartrate;
  const factory SensorType.fitnessmachine() = Fitnessmachine;
}
