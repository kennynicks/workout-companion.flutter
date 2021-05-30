import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';

abstract class FutureUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(
    Params params,
  );
}
