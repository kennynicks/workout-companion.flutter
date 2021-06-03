import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

class FitnessMachineSensorModel extends SensorModel {
  FitnessMachineSensorModel({
    @required String name,
    @required String id,
    @required BluetoothDevice bluetoothDevice,
  }) : super(
          id: id,
          name: name,
          bluetoothDevice: bluetoothDevice,
          type: SensorType.FitnessMachine,
        );
}
