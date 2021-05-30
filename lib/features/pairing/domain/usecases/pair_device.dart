import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/domain/usecases/future_usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class PairDevice implements FutureUseCase<bool, Params> {
  final PairingRepository repository;

  PairDevice(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) {
    return repository.pairDevice(params.macAddress);
  }
}

class Params extends Equatable {
  final String macAddress;

  Params({@required this.macAddress});

  @override
  List<Object> get props => [this.macAddress];
}
