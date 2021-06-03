import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

class FitnessMachineSensor extends Sensor {
  FitnessMachineSensor({
    @required name,
    @required id,
    @required bluetoothDevice,
  }) : super(
          id: id,
          name: name,
          type: SensorType.FitnessMachine,
          bluetoothDevice: bluetoothDevice,
        );

  factory FitnessMachineSensor.fromSensor(Sensor sensor) {
    return FitnessMachineSensor(
      name: sensor.name,
      id: sensor.id,
      bluetoothDevice: sensor.bluetoothDevice,
    );
  }
}
