import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

class FitnessMachineSensor extends Sensor {
  FitnessMachineSensor({
    @required name,
    @required id,
  }) : super(
          id: id,
          name: name,
          type: SensorType.FitnessMachine,
        );
}
