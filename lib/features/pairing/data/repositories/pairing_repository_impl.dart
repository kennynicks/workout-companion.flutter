import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/data/datasources/ble_remote_data_source.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/cadence_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/fitness_machine_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/heart_rate_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor_bundle.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class PairingRepositoryImpl implements PairingRepository {
  final BleRemoteDataSource bleRemoteDataSource;

  PairingRepositoryImpl({@required this.bleRemoteDataSource});

  @override
  Future<Either<Failure, Stream<SensorBundle>>> autoConnectSensors() async {
    //TODO connect to last sensor only
    try {
      final scanStream = await bleRemoteDataSource.scanForSensors();
      final StreamController sensorBundleStreamController =
          StreamController<SensorBundle>();
      CadenceSensor cadenceSensor = null;
      HeartRateSensor heartRateSensor = null;
      FitnessMachineSensor fitnessMachineSensor = null;
      bool streamIsClosed = false;

      scanStream.listen((List<SensorModel> sensors) async {
        bool changed = false;
        for (int i = 0; i < sensors.length; i++) {
          SensorModel sensor = sensors[i];
          switch (sensor.type) {
            case SensorType.Cadence:
              if (cadenceSensor != null) {
                break;
              }
              changed = true;
              await bleRemoteDataSource.pairDevice(sensor);
              cadenceSensor = CadenceSensor.fromSensor(sensor);
              break;
            case SensorType.HeartRate:
              if (heartRateSensor != null) {
                break;
              }
              changed = true;
              await bleRemoteDataSource.pairDevice(sensor);
              heartRateSensor = HeartRateSensor.fromSensor(sensor);
              break;
            case SensorType.FitnessMachine:
              if (fitnessMachineSensor != null) {
                return;
              }
              changed = true;
              await bleRemoteDataSource.pairDevice(sensor);
              fitnessMachineSensor = FitnessMachineSensor.fromSensor(sensor);
              break;
            default:
              break;
          }
        }
        final SensorBundle sensorBundle = SensorBundle(
          cadenceSensor: cadenceSensor,
          heartRateSensor: heartRateSensor,
          fitnessMachineSensor: fitnessMachineSensor,
        );
        if (!sensorBundleStreamController.isClosed && changed) {
          sensorBundleStreamController.add(
            sensorBundle,
          );
        }
        if (sensorBundle.cadenceSensor != null &&
            sensorBundle.heartRateSensor != null &&
            sensorBundle.fitnessMachineSensor != null) {
          await sensorBundleStreamController.close();
        }
        if (streamIsClosed) {
          await sensorBundleStreamController.close();
        }
      }, onDone: () {
        streamIsClosed = true;
      });
      return Right(
        sensorBundleStreamController.stream,
      );
    } on BluetoothUnavailableException {
      return Left(
        BluetoothUnavailableFailure(),
      );
    } on BluetoothOffException {
      return Left(
        BluetoothOffFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> pairDevice(Sensor sensor) async {
    try {
      return Right(
        await bleRemoteDataSource.pairDevice(sensor),
      );
    } on BluetoothUnavailableException {
      return Left(
        BluetoothUnavailableFailure(),
      );
    } on BluetoothOffException {
      return Left(
        BluetoothOffFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, Stream<List<Sensor>>>> scanForSensorType(
    SensorType type,
  ) async {
    try {
      return Right(
        (await bleRemoteDataSource.scanForSensorType(type)).asyncMap(
          (List<SensorModel> sensors) => sensors.cast<Sensor>(),
        ),
      );
    } on BluetoothUnavailableException {
      return Left(
        BluetoothUnavailableFailure(),
      );
    } on BluetoothOffException {
      return Left(
        BluetoothOffFailure(),
      );
    } on IllegalArgumentException {
      return Left(
        IllegalArgumentFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> stopScan() async {
    return Right(await bleRemoteDataSource.stopScan());
  }
}
