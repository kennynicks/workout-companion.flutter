import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/data/datasources/ble_remote_datasource.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor_bundle.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';

class PairingRepositoryImpl implements PairingRepository {
  final BleRemoteDataSource bleRemoteDataSource;

  PairingRepositoryImpl({@required this.bleRemoteDataSource});

  @override
  Future<Either<Failure, Stream<SensorBundle>>> autoConnectSensors() {
    // TODO: implement autoConnectSensors
    throw UnimplementedError();
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
    }
  }
}
