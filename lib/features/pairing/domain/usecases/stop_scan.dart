import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class StopScan implements UseCase<void, NoParams> {
  final PairingRepository repository;

  StopScan(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return repository.stopScan();
  }
}
