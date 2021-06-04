import 'package:flutter_blue/flutter_blue.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/core/constants/service_uuids.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/scan_for_sensor_type.dart';

abstract class BleRemoteDataSource {
  /// Returns a Stream of Sensor Devices
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<Stream<List<SensorModel>>> scanForSensors();

  /// Returns a Stream of Sensor Devices matching the [SensorType]
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<Stream<List<SensorModel>>> scanForSensorType(SensorType sensorType);

  /// Connects to a specific Device and sets autoConnect to [true]
  ///
  /// Throws a [BluetoothOffException] if bluetooth is turned off.
  /// Throws a [BluetoothUnavailableException] if bluetooth is not available
  Future<void> pairDevice(Sensor sensor);

  /// Stops the scanning if a scan is running
  Future<void> stopScan();
}

class BleRemoteDataSourceImpl implements BleRemoteDataSource {
  final FlutterBlue flutterBlue;

  BleRemoteDataSourceImpl({
    @required this.flutterBlue,
  });

  @override
  Future<void> pairDevice(Sensor sensor) async {
    if (!await flutterBlue.isAvailable) {
      throw BluetoothUnavailableException();
    }
    if (!await flutterBlue.isOn) {
      throw BluetoothOffException();
    }
    await sensor.bluetoothDevice.connect(autoConnect: true);
  }

  @override
  Future<Stream<List<SensorModel>>> scanForSensorType(
      SensorType sensorType) async {
    if (!await flutterBlue.isAvailable) {
      throw BluetoothUnavailableException();
    }
    if (!await flutterBlue.isOn) {
      throw BluetoothOffException();
    }
    List<String> services;
    switch (sensorType) {
      case SensorType.Cadence:
        services = CADENCE_SENSOR_ADVERTISEMENT_SERVICES;
        break;
      case SensorType.HeartRate:
        services = HEART_RATE_SENSOR_ADVERTISEMENT_SERVICES;
        break;
      case SensorType.FitnessMachine:
        services = FITNESS_MACHINE_SENSOR_ADVERTISEMENT_SERVICES;
        break;
      default:
        throw IllegalArgumentException();
    }
    await flutterBlue.stopScan();
    flutterBlue.startScan(
      allowDuplicates: false,
      withServices: services
          .map(
            (service) => Guid(service),
          )
          .toList(),
    );
    return flutterBlue.scanResults.asyncMap(
      (List<ScanResult> scanResults) => scanResults
          .map(
            (ScanResult scanResult) => SensorModel.fromScanResult(scanResult),
          )
          .toList(),
    );
  }

  @override
  Future<Stream<List<SensorModel>>> scanForSensors() async {
    if (!await flutterBlue.isAvailable) {
      throw BluetoothUnavailableException();
    }
    if (!await flutterBlue.isOn) {
      throw BluetoothOffException();
    }
    await flutterBlue.stopScan();
    flutterBlue.startScan(
      allowDuplicates: false,
      withServices: (CADENCE_SENSOR_ADVERTISEMENT_SERVICES +
              HEART_RATE_SENSOR_ADVERTISEMENT_SERVICES +
              FITNESS_MACHINE_SENSOR_ADVERTISEMENT_SERVICES)
          .map(
            (service) => Guid(service),
          )
          .toList(),
    );
    return flutterBlue.scanResults.asyncMap(
      (List<ScanResult> scanResults) => scanResults
          .map(
            (ScanResult scanResult) => SensorModel.fromScanResult(scanResult),
          )
          .toList(),
    );
  }

  @override
  Future<void> stopScan() async {
    await flutterBlue.stopScan();
  }
}
