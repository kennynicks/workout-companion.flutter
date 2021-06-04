import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/core/constants/strings.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor_bundle.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/pair_device.dart'
    as usecase1;
import 'package:workout_companion_flutter/features/pairing/domain/usecases/auto_connect_sensors.dart'
    as usecase2;
import 'package:workout_companion_flutter/features/pairing/domain/usecases/scan_for_sensor_type.dart'
    as usecase3;
import 'package:workout_companion_flutter/features/pairing/domain/usecases/stop_scan.dart'
    as usecase4;

part 'pairing_event.dart';
part 'pairing_state.dart';

class PairingBloc extends Bloc<PairingEvent, PairingState> {
  final usecase1.PairDevice pairDevice;
  final usecase2.AutoConnectSensors autoConnectSensors;
  final usecase3.ScanForSensorType scanForSensorType;
  final usecase4.StopScan stopScan;

  PairingBloc({
    @required this.pairDevice,
    @required this.autoConnectSensors,
    @required this.scanForSensorType,
    @required this.stopScan,
  }) : super(Empty());

  @override
  Stream<PairingState> mapEventToState(
    PairingEvent event,
  ) async* {
    if (event is PairDevice) {
      yield* _handlePairDevice(event);
    } else if (event is StopScan) {
      yield* _handleStopScan(event);
    } else if (event is AutoConnectSensors) {
      yield* _handleAutoConnectSensors(event);
    } else if (event is ScanForSensorType) {
      yield* _handleScanForSensorType(event);
    }
  }

  Stream<PairingState> _handlePairDevice(
    PairDevice event,
  ) async* {
    yield Loading();
    final result = await pairDevice(
      usecase1.Params(
        sensor: event.sensor,
      ),
    );
    yield result.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (response) => PairedDevice(),
    );
  }

  Stream<PairingState> _handleStopScan(
    StopScan event,
  ) async* {
    yield Loading();
    final result = await stopScan(NoParams());
    yield result.fold(
      (failure) {
        return Error(message: _mapFailureToMessage(failure));
      },
      (response) => StoppedScan(),
    );
  }

  Stream<PairingState> _handleAutoConnectSensors(
    AutoConnectSensors event,
  ) async* {}

  Stream<PairingState> _handleScanForSensorType(
    ScanForSensorType event,
  ) async* {}

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case BluetoothUnavailableFailure:
        return BLUETOOTH_UNAVAILABLE_FAILURE_MESSAGE;
      case BluetoothOffFailure:
        return BLUETOOTH_OFF_FAILURE_MESSAGE;
      case IllegalArgumentFailure:
        return ILLEGAL_ARGUMENT_FAILURE_MESSAGE;
      default:
        return "Unerwarteter Fehler aufgetreten";
    }
  }
}
