import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/domain/core/sensors/bluetooth_failure.dart';
import 'package:workout_companion_flutter/domain/core/sensors/heartrate/constants.dart';
import 'package:workout_companion_flutter/domain/core/sensors/i_sensor_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';
import 'package:workout_companion_flutter/domain/core/sensors/service_uuids.dart';

@Singleton(as: ISensorRepository)
class SensorRepository implements ISensorRepository {
  final FlutterBlue flutterBlue;
  StreamController<List<Sensor>> _sensorStream;
  List<Sensor> lastSensorScan = List.empty();
  bool _isScanning = false;

  SensorRepository({required this.flutterBlue})
      : _sensorStream = StreamController<List<Sensor>>.broadcast();

  @override
  Future<Either<BluetoothFailure, void>> pairDevice(Sensor sensor) async {
    if (!await flutterBlue.isAvailable) {
      return left(const BluetoothFailure.unavailable());
    }
    if (!await flutterBlue.isOn) {
      return left(const BluetoothFailure.off());
    }
    try {
      await sensor.bluetoothDevice.connect();
    } catch (e) {
      log(("platform exception: $e"));
    }
    return right(null);
  }

  @override
  Future<Either<BluetoothFailure, Stream<List<Sensor>>>> scanForSensorType(
      SensorType type) async {
    if (!await flutterBlue.isAvailable) {
      return left(const BluetoothFailure.unavailable());
    }
    if (!await flutterBlue.isOn) {
      return left(const BluetoothFailure.off());
    }
    log("starting scan for type $type");
    return right(
      (await sensorStream).asyncMap(
        (sensors) => sensors.where((sensor) => sensor.type == type).toList(),
      ),
    );
  }

  @override
  Future<Either<BluetoothFailure, void>> stopScan() async {
    // _isScanning = false;
    if (!_sensorStream.isClosed) {
      log("closing 2");
      await _sensorStream.close();
    }
    await flutterBlue.stopScan();
    return right(null);
  }

  Future<Stream<List<Sensor>>> get sensorStream async {
    if (!_isScanning) {
      // _isScanning = true;
      log("starting scan");
      await _startScan();
    } else {
      log("scan already in progress");
      _sensorStream.add(lastSensorScan);
    }
    return _sensorStream.stream;
  }

  Future _startScan() async {
    await flutterBlue.stopScan();
    final List<String> services = [
      ...CADENCE_SENSOR_ADVERTISEMENT_SERVICES,
      ...heartrateSensorAdvertisementServices,
      ...FITNESS_MACHINE_SENSOR_ADVERTISEMENT_SERVICES
    ];
    flutterBlue.startScan(
      withServices: services.map((e) => Guid(e)).toList(),
    );
    // _isScanning = true;
    log("_sensorStream.isClosed 1: ${_sensorStream.isClosed}");
    if (_sensorStream.isClosed) {
      _sensorStream = StreamController<List<Sensor>>.broadcast();
    }
    flutterBlue.scanResults
        .asyncMap(
      (List<ScanResult> scanResults) => scanResults
          .map((ScanResult scanResult) => Sensor.fromScanResult(scanResult))
          .toList(),
    )
        .listen(
      (List<Sensor> sensors) {
        log("_sensorStream.isClosed: ${_sensorStream.isClosed}");
        if (!_sensorStream.isClosed) {
          _sensorStream.add(sensors);
        }
      },
    );
    flutterBlue.stopScan(); //TODO check this
    flutterBlue.isScanning.listen((isScanning) {
      log("flutterBlue.isScanning: $isScanning");
      _isScanning = isScanning;
    });
  }

  @override
  @disposeMethod
  Future dispose() async {
    log("closing 1");
    await flutterBlue.stopScan();
    await _sensorStream.close();
  }
}
