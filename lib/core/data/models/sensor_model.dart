import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/fitness_machine_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/heart_rate_sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/extensions/ble_matching.dart';
import 'package:meta/meta.dart';

abstract class SensorModel extends Sensor {
  SensorModel({
    @required String name,
    @required String id,
    @required SensorType type,
    @required BluetoothDevice bluetoothDevice,
  }) : super(
          id: id,
          name: name,
          type: type,
          bluetoothDevice: bluetoothDevice,
        );

  factory SensorModel.fromScanResult(ScanResult scanResult) {
    String name = scanResult.device.name;
    String id = scanResult.device.id.id;
    SensorType type = scanResult.advertisementData.serviceUuids.toSensorType();
    switch (type) {
      case SensorType.Cadence:
        return CadenceSensorModel(
          name: name,
          id: id,
          bluetoothDevice: scanResult.device,
        );
      case SensorType.HeartRate:
        return HeartRateSensorModel(
          name: name,
          id: id,
          bluetoothDevice: scanResult.device,
        );
      case SensorType.FitnessMachine:
        return FitnessMachineSensorModel(
          name: name,
          id: id,
          bluetoothDevice: scanResult.device,
        );
      default:
        throw UnknownSensorTypeException();
    }
  }
}
