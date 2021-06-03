import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/domain/entities/cadence_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/fitness_machine_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/heart_rate_sensor.dart';

class SensorBundle extends Equatable {
  final CadenceSensor cadenceSensor;
  final HeartRateSensor heartRateSensor;
  final FitnessMachineSensor fitnessMachineSensor;

  SensorBundle({
    @required this.cadenceSensor,
    @required this.heartRateSensor,
    @required this.fitnessMachineSensor,
  });

  @override
  List<Object> get props => [
        this.cadenceSensor,
        this.heartRateSensor,
        this.fitnessMachineSensor,
      ];
}
