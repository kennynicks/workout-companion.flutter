import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class GetFilteredDevices implements UseCase<Stream<List<Sensor>>, Params> {
  final PairingRepository repository;

  GetFilteredDevices(this.repository);

  @override
  Either<Failure, Stream<List<Sensor>>> call(Params params) {
    return repository.getFilteredDevices(params.type);
  }
}

class Params extends Equatable {
  final SensorType type;

  Params({@required this.type});

  @override
  List<Object> get props => [this.type];
}
