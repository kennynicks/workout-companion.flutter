import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_companion_flutter/constants/services_guuids.dart';

part 'service_type.freezed.dart';

@freezed
abstract class ServiceType with _$ServiceType {
  const factory ServiceType.unknown() = Unknown;
  const factory ServiceType.heartrate() = Heartrate;
  const factory ServiceType.cadence() = Cadence;
  const factory ServiceType.cyclingPower() = CyclingPower;
  const factory ServiceType.fitnessMachnine() = FitnessMachine;
  factory ServiceType.fromGuid(String guid) {
    if (heartrateSensorAdvertisementService == guid) {
      return const ServiceType.heartrate();
    }
    if (cadenceSensorAdvertisementService == guid) {
      return const ServiceType.cadence();
    }
    if (cyclingPowerService == guid) {
      return const ServiceType.cyclingPower();
    }
    if (fitnessMachineService == guid) {
      return const ServiceType.fitnessMachnine();
    }
    return const ServiceType.unknown();
  }
}
