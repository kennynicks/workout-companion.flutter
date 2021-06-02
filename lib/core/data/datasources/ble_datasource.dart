import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/core/data/models/SensorModel.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

abstract class BleDataSource {
  /// Returns a Stream of connected Sensor Devices
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<Stream<List<SensorModel>>> getConnectedDevicesStream();

  /// Returns a Stream of Sensor Devices matching the [SensorType]
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<Stream<List<T>>> scanForDevices<T extends SensorModel>(
      SensorType sensorType);

  /// Connects to a specific Device and sets autoConnect to [true]
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<void> pairDevice(SensorModel sensorModel);
}

class BleDataSourceImpl implements BleDataSource {
  final FlutterBlue flutterBlue;

  BleDataSourceImpl({
    @required this.flutterBlue,
  });

  @override
  Future<Stream<List<SensorModel>>> getConnectedDevicesStream() async {
    if (!await flutterBlue.isOn) {
      throw BluetoothOffException();
    }
    if (!await flutterBlue.isAvailable) {
      throw BluetoothUnavailableException();
    }
    BluetoothDevice device;
    device.connect(autoConnect: true);
    return flutterBlue.connectedDevices.asStream().asyncMap(
        (List<BluetoothDevice> devices) => devices
            .map((BluetoothDevice device) => SensorModel(
                name: device.name,
                id: device.id.id,
                type: SensorModel.getSensorTypeFromSpecs()))
            .toList());
  }

  @override
  Future<Stream<List<SensorModel>>> getFilteredDevicesStream() async {
    if (!await flutterBlue.isOn) {
      throw BluetoothOffException();
    }
    if (!await flutterBlue.isAvailable) {
      throw BluetoothUnavailableException();
    }
    List<BluetoothDevice> connectedDevices = await flutterBlue.connectedDevices;
    connectedDevices.forEach((device) async {
      List<BluetoothService> services = await device.discoverServices();
    });
    flutterBlue.startScan();
    flutterBlue.scanResults.listen((List<ScanResult> devices) {
      devices.forEach((device) async {
        log("$device");
      });
    });
    await flutterBlue.stopScan();
  }

  @override
  Future<void> pairDevice(SensorModel sensorModel) {
    // TODO: implement pairDevice
    throw UnimplementedError();
  }

  @override
  Future<Stream<List<T>>> scanForDevices<T extends SensorModel>(
      SensorType sensorType) {
    // TODO: implement scanForDevices
    throw UnimplementedError();
  }

  // @override
  // Future<void> pairDevice() {
  //   // TODO: implement pairDevice
  //   throw UnimplementedError();
  // }
}
