import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class GetConnectedDevices implements UseCase<Stream<List<Sensor>>, NoParams> {
  final PairingRepository repository;

  GetConnectedDevices(this.repository);

  @override
  Either<Failure, Stream<List<Sensor>>> call(NoParams params) {
    return repository.listenToConnectedDevices();
  }
}
