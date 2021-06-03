import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/SensorBundle.dart';

abstract class PairingRepository {
  Future<Either<Failure, Stream<SensorBundle>>> autoConnectSensors();
  Future<Either<Failure, Stream<List<Sensor>>>> scanForSensorType(
    SensorType type,
  );
  Future<Either<Failure, void>> pairDevice(
    String macAddress,
  );
}
