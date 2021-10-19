import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_type.freezed.dart';

@freezed
abstract class ServiceType with _$ServiceType {
  const factory ServiceType.heartrate() = Heartrate;
  const factory ServiceType.cadence() = Cadence;
  const factory ServiceType.trainer() = Trainer;
}
