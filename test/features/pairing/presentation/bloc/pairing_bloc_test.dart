import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_companion_flutter/core/constants/strings.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/domain/entities/cadence_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/auto_connect_sensors.dart'
    as usecase2;
import 'package:workout_companion_flutter/features/pairing/domain/usecases/pair_device.dart'
    as usecase1;
import 'package:workout_companion_flutter/features/pairing/domain/usecases/scan_for_sensor_type.dart'
    as usecase3;
import 'package:workout_companion_flutter/features/pairing/domain/usecases/stop_scan.dart'
    as usecase4;
import 'package:workout_companion_flutter/features/pairing/presentation/bloc/pairing_bloc.dart';

class MockPairDevice extends Mock implements usecase1.PairDevice {}

class MockAutoConnectSensors extends Mock
    implements usecase2.AutoConnectSensors {}

class MockScanForSensorType extends Mock implements usecase3.ScanForSensorType {
}

class MockStopScan extends Mock implements usecase4.StopScan {}

void main() {
  MockPairDevice mockPairDevice;
  MockAutoConnectSensors mockAutoConnectSensors;
  MockScanForSensorType mockScanForSensorType;
  MockStopScan mockStopScan;
  PairingBloc SUT;

  setUp(() {
    mockPairDevice = MockPairDevice();
    mockAutoConnectSensors = MockAutoConnectSensors();
    mockScanForSensorType = MockScanForSensorType();
    mockStopScan = MockStopScan();

    SUT = PairingBloc(
      pairDevice: mockPairDevice,
      autoConnectSensors: mockAutoConnectSensors,
      scanForSensorType: mockScanForSensorType,
      stopScan: mockStopScan,
    );
  });

  test("initalState should be Empty", () {
    expect(SUT.state, Empty());
  });

  group("StopScan", () {
    test('should execute the StopScan use case', () async {
      // arrange
      when(mockStopScan(any)).thenAnswer((_) async => Right(null));
      //act
      SUT.add(StopScan());
      await untilCalled(mockStopScan(any));
      //assert
      verify(mockStopScan(NoParams()));
    });

    test('should emit [Loading, StoppedScan] when data is gotten successfully',
        () async {
      // arrange
      when(mockStopScan(any)).thenAnswer((_) async => Right(null));
      //assert later
      final expected = [
        Loading(),
        StoppedScan(),
      ];
      expectLater(SUT.stream, emitsInOrder(expected));
      //act
      SUT.add(StopScan());
    });

    test('should emit [Loading, Error] when getting data fails', () async {
      // arrange
      when(mockStopScan(any)).thenAnswer(
        (_) async => Left(
          BluetoothOffFailure(),
        ),
      );
      //assert later
      final expected = [
        Loading(),
        Error(
          message: BLUETOOTH_OFF_FAILURE_MESSAGE,
        ),
      ];
      expectLater(SUT.stream, emitsInOrder(expected));
      //act
      SUT.add(
        StopScan(),
      );
    });

    test(
        'should emit [Loading, Error] with a proper message for the error when getting data fails',
        () async {
      // arrange
      when(mockStopScan(any))
          .thenAnswer((_) async => Left(BluetoothUnavailableFailure()));
      //assert later
      final expected = [
        Loading(),
        Error(
          message: BLUETOOTH_UNAVAILABLE_FAILURE_MESSAGE,
        ),
      ];
      expectLater(SUT.stream, emitsInOrder(expected));
      //act
      SUT.add(
        StopScan(),
      );
    });
  });

  group("PairDevice", () {
    final Sensor tSensor = CadenceSensor(
      name: "name",
      id: "id",
      bluetoothDevice: null,
    );
    test('should execute the PairDevice use case', () async {
      // arrange
      when(mockPairDevice(any)).thenAnswer((_) async => Right(null));
      //act
      SUT.add(PairDevice(sensor: tSensor));
      await untilCalled(mockPairDevice(any));
      //assert
      verify(
        mockPairDevice(
          usecase1.Params(
            sensor: tSensor,
          ),
        ),
      );
    });

    test(
        'should emit [Loading, PairedDevice] when usecase was executed successfully',
        () async {
      // arrange
      when(mockPairDevice(any)).thenAnswer((_) async => Right(null));
      //assert later
      final expected = [
        Loading(),
        PairedDevice(),
      ];
      expectLater(SUT.stream, emitsInOrder(expected));
      //act
      SUT.add(
        PairDevice(
          sensor: tSensor,
        ),
      );
    });

    test('should emit [Loading, Error] when executing usecase fails', () async {
      // arrange
      when(mockPairDevice(any)).thenAnswer(
        (_) async => Left(
          BluetoothOffFailure(),
        ),
      );
      //assert later
      final expected = [
        Loading(),
        Error(
          message: BLUETOOTH_OFF_FAILURE_MESSAGE,
        ),
      ];
      expectLater(SUT.stream, emitsInOrder(expected));
      //act
      SUT.add(
        PairDevice(
          sensor: tSensor,
        ),
      );
    });

    test(
        'should emit [Loading, Error] with a proper message for the error when executing the usecase fails',
        () async {
      // arrange
      when(mockPairDevice(any))
          .thenAnswer((_) async => Left(BluetoothUnavailableFailure()));
      //assert later
      final expected = [
        Loading(),
        Error(
          message: BLUETOOTH_UNAVAILABLE_FAILURE_MESSAGE,
        ),
      ];
      expectLater(SUT.stream, emitsInOrder(expected));
      //act
      SUT.add(
        PairDevice(
          sensor: tSensor,
        ),
      );
    });
  });
}
