import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class PairingRepositoryImpl implements PairingRepository {
  @override
  Future<Either<Failure, Stream<List<Sensor>>>> getFilteredDevices(
    SensorType type,
  ) {
    // TODO: implement getFilteredDevices
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Stream<List<Sensor>>>> listenToConnectedDevices() {
    // TODO: implement listenToConnectedDevices
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> pairDevice(
    String macAddress,
  ) {
    // TODO: implement pairDevice
    throw UnimplementedError();
  }
}
