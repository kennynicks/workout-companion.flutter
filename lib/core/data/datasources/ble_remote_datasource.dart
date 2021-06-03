import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor_bundle.dart';

abstract class BleRemoteDataSource {
  /// Returns a Stream of connected Sensor Devices as a bundle
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<Stream<SensorBundle>> runAutoConnect();

  /// Returns a Stream of Sensor Devices matching the [SensorType]
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<Stream<List<SensorModel>>> scanForSensorType(SensorType sensorType);

  /// Connects to a specific Device and sets autoConnect to [true]
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<void> pairDevice(SensorModel sensorModel);
}

class BleRemoteDataSourceImpl implements BleRemoteDataSource {
  final FlutterBlue flutterBlue;

  BleRemoteDataSourceImpl({
    @required this.flutterBlue,
  });

  @override
  Future<void> pairDevice(SensorModel sensorModel) async {
    if (!await flutterBlue.isAvailable) {
      throw BluetoothUnavailableException();
    }
    if (!await flutterBlue.isOn) {
      throw BluetoothOffException();
    }
    await sensorModel.bluetoothDevice.connect(autoConnect: true);
  }

  @override
  Future<Stream<SensorBundle>> runAutoConnect() {
    // TODO: implement runAutoConnect
    throw UnimplementedError();
  }

  @override
  Future<Stream<List<SensorModel>>> scanForSensorType(SensorType sensorType) {
    // TODO: implement scanForSensorType
    throw UnimplementedError();
  }
}

//   @override
//   Future<Stream<List<SensorModel>>> getConnectedDevicesStream() async {
//     if (!await flutterBlue.isOn) {
//       throw BluetoothOffException();
//     }
//     if (!await flutterBlue.isAvailable) {
//       throw BluetoothUnavailableException();
//     }
//     BluetoothDevice device;
//     device.connect(autoConnect: true);
//     // return flutterBlue.connectedDevices.asStream().asyncMap(
//     //     (List<BluetoothDevice> devices) => devices
//     //         .map((BluetoothDevice device) => SensorModel(
//     //             name: device.name,
//     //             id: device.id.id,
//     //             type: SensorModel.getSensorTypeFromSpecs()))
//     //         .toList());
//   }

//   @override
//   Future<Stream<List<SensorModel>>> getFilteredDevicesStream() async {
//     if (!await flutterBlue.isOn) {
//       throw BluetoothOffException();
//     }
//     if (!await flutterBlue.isAvailable) {
//       throw BluetoothUnavailableException();
//     }
//     // List<BluetoothDevice> connectedDevices = await flutterBlue.connectedDevices;
//     // connectedDevices.forEach((device) async {
//     //   List<BluetoothService> services = await device.discoverServices();
//     // });
//     // flutterBlue.startScan();
//     // flutterBlue.scanResults.listen((List<ScanResult> devices) {
//     //   devices.forEach((device) async {
//     //     log("$device");
//     //   });
//     // });
//     // await flutterBlue.stopScan();
//   }

//   @override
//   Future<void> pairDevice(SensorModel sensorModel) {
//     // TODO: implement pairDevice
//     throw UnimplementedError();
//   }

//   @override
//   Future<Stream<List<T>>> scanForDevices<T extends SensorModel>(
//       SensorType sensorType) {
//     // TODO: implement scanForDevices
//     throw UnimplementedError();
//   }

//   // @override
//   // Future<void> pairDevice() {
//   //   // TODO: implement pairDevice
//   //   throw UnimplementedError();
//   // }
// }
