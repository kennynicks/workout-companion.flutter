import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class PairDevice implements UseCase<void, Params> {
  final PairingRepository repository;

  PairDevice(this.repository);

  @override
  Future<Either<Failure, void>> call(Params params) {
    return repository.pairDevice(params.sensor);
  }
}

class Params extends Equatable {
  final Sensor sensor;

  Params({@required this.sensor});

  @override
  List<Object> get props => [this.sensor];
}
