import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

class HeartRateSensor extends Sensor {
  HeartRateSensor({
    @required name,
    @required id,
  }) : super(
          id: id,
          name: name,
          type: SensorType.HeartRate,
        );

  factory HeartRateSensor.fromSensor(Sensor sensor) {
    return HeartRateSensor(name: sensor.name, id: sensor.id);
  }
}
