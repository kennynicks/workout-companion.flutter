import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/constants/service_uuids.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

class CadenceSensor extends Sensor {
  CadenceSensor({
    @required name,
    @required id,
  }) : super(
          id: id,
          name: name,
          type: SensorType.Cadence,
        );

  factory CadenceSensor.fromSensor(Sensor sensor) {
    return CadenceSensor(name: sensor.name, id: sensor.id);
  }
}
