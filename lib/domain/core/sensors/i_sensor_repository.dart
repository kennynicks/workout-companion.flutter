import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/domain/core/sensors/bluetooth_failure.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';

abstract class ISensorRepository {
  Future<Either<BluetoothFailure, void>> stopScan();
  Future<Either<BluetoothFailure, void>> pairDevice(
    Sensor sensor,
  );
  Future<Either<BluetoothFailure, Stream<List<Sensor>>>> scanForSensorType(
    SensorType type,
  );
}
