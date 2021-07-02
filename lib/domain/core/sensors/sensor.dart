import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';

part 'sensor.freezed.dart';

@freezed
abstract class Sensor with _$Sensor {
  const factory Sensor({
    required String name,
    required String id,
    required SensorType type,
    required BluetoothDevice bluetoothDevice,
  }) = _Sensor;

  factory Sensor.cadence(
          {required String name,
          required String id,
          required BluetoothDevice bluetoothDevice}) =>
      Sensor(
        bluetoothDevice: bluetoothDevice,
        id: id,
        name: name,
        type: const SensorType.cadence(),
      );

  factory Sensor.heartrate(
          {required String name,
          required String id,
          required BluetoothDevice bluetoothDevice}) =>
      Sensor(
        bluetoothDevice: bluetoothDevice,
        id: id,
        name: name,
        type: const SensorType.heartrate(),
      );

  factory Sensor.fitnessmachine(
          {required String name,
          required String id,
          required BluetoothDevice bluetoothDevice}) =>
      Sensor(
        bluetoothDevice: bluetoothDevice,
        id: id,
        name: name,
        type: const SensorType.fitnessmachine(),
      );

  factory Sensor.fromScanResult(ScanResult scanResult) {
    final String name = scanResult.device.name;
    final String id = scanResult.device.id.id;
    final SensorType type =
        SensorType.fromServiceUuids(scanResult.advertisementData.serviceUuids);
    return type.maybeMap(
      cadence: (_) => Sensor.cadence(
        name: name,
        id: id,
        bluetoothDevice: scanResult.device,
      ),
      heartrate: (_) => Sensor.heartrate(
        name: name,
        id: id,
        bluetoothDevice: scanResult.device,
      ),
      fitnessmachine: (_) => Sensor.fitnessmachine(
        name: name,
        id: id,
        bluetoothDevice: scanResult.device,
      ),
      orElse: () {
        log("unknown sensor type");
        // throw Exception("UNKNOWN SENSOR TYPE");//TODO uncomment
        return Sensor(
          bluetoothDevice: scanResult.device,
          name: name,
          id: id,
          type: const SensorType.unknown(),
        );
      },
    );
  }
}
