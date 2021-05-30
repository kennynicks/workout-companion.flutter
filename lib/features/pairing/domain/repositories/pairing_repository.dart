import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor.dart';

abstract class PairingRepository {
  Either<Failure, Stream<List<Sensor>>> listenToConnectedDevices();
  Either<Failure, Stream<List<Sensor>>> getFilteredDevices(SensorType type);
  Future<Either<Failure, void>> pairDevice(String macAddress);
}
