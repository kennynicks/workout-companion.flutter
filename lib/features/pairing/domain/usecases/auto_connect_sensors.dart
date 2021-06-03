import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/SensorBundle.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class AutoConnectSensors implements UseCase<Stream<SensorBundle>, NoParams> {
  final PairingRepository repository;

  AutoConnectSensors(this.repository);

  @override
  Future<Either<Failure, Stream<SensorBundle>>> call(NoParams params) {
    return repository.autoConnectSensors();
  }
}
