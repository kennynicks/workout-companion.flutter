import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/data/datasources/ble_remote_data_source.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/error/failures.dart';
import 'package:workout_companion_flutter/core/data/models/fitness_machine_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/heart_rate_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:workout_companion_flutter/core/domain/entities/cadence_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/fitness_machine_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/heart_rate_sensor.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/data/repositories/pairing_repository_impl.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor_bundle.dart';

class MockBleRemoteDataSource extends Mock implements BleRemoteDataSource {}

void main() {
  MockBleRemoteDataSource mockBleRemoteDataSource;
  PairingRepositoryImpl pairingRepositoryImpl;

  setUp(() {
    mockBleRemoteDataSource = MockBleRemoteDataSource();
    pairingRepositoryImpl = PairingRepositoryImpl(
      bleRemoteDataSource: mockBleRemoteDataSource,
    );
  });

  group("pairDevice", () {
    final tId = "id";
    final tName = "name";
    final tSensor = CadenceSensor(
      name: tName,
      id: tId,
      bluetoothDevice: null,
    );
    test(
        'should return a BluetoothUnavailableFailure when a BluetoothUnavailableException is thrown',
        () async {
      // arrange
      when(mockBleRemoteDataSource.pairDevice(any)).thenThrow(
        BluetoothUnavailableException(),
      );
      // act
      final result = await pairingRepositoryImpl.pairDevice(tSensor);
      // assert
      verify(mockBleRemoteDataSource.pairDevice(tSensor));
      expect(
        result,
        Left(
          BluetoothUnavailableFailure(),
        ),
      );
    });

    test(
        'should return a BluetoothOffFailure when a BluetoothOffException is thrown',
        () async {
      // arrange
      when(mockBleRemoteDataSource.pairDevice(any)).thenThrow(
        BluetoothOffException(),
      );
      // act
      final result = await pairingRepositoryImpl.pairDevice(tSensor);
      // assert
      verify(mockBleRemoteDataSource.pairDevice(tSensor));
      expect(
        result,
        Left(
          BluetoothOffFailure(),
        ),
      );
    });

    test('should return Right-Side when the device was paired', () async {
      // arrange
      when(mockBleRemoteDataSource.pairDevice(any)).thenAnswer(
        (_) => Future.value(),
      );
      // act
      final result = await pairingRepositoryImpl.pairDevice(tSensor);
      // assert
      verify(mockBleRemoteDataSource.pairDevice(tSensor));
      expect(result, Right(null));
    });
  });

  group("scanForSensorType", () {
    final tSensorType = SensorType.Cadence;
    final tId = "id";
    final tName = "name";
    final SensorModel tSensorModel = CadenceSensorModel(
      name: tName,
      id: tId,
      bluetoothDevice: null,
    );

    final Sensor tSensor = tSensorModel;
    test(
        'should return a BluetoothUnavailableFailure when a BluetoothUnavailableException is thrown',
        () async {
      // arrange
      when(mockBleRemoteDataSource.scanForSensorType(any)).thenThrow(
        BluetoothUnavailableException(),
      );
      // act
      final result = await pairingRepositoryImpl.scanForSensorType(tSensorType);
      // assert
      verify(mockBleRemoteDataSource.scanForSensorType(tSensorType));
      expect(
        result,
        Left(
          BluetoothUnavailableFailure(),
        ),
      );
    });

    test(
        'should return a BluetoothOffFailure when a BluetoothOffException is thrown',
        () async {
      // arrange
      when(mockBleRemoteDataSource.scanForSensorType(any)).thenThrow(
        BluetoothOffException(),
      );
      // act
      final result = await pairingRepositoryImpl.scanForSensorType(tSensorType);
      // assert
      verify(mockBleRemoteDataSource.scanForSensorType(tSensorType));
      expect(
        result,
        Left(
          BluetoothOffFailure(),
        ),
      );
    });

    test('should return stream of sensors of specified type', () async {
      // arrange
      when(mockBleRemoteDataSource.scanForSensorType(any)).thenAnswer(
        (_) async => Stream.fromFuture(
          Future.value(
            [tSensorModel],
          ),
        ),
      );
      // act
      final result = await pairingRepositoryImpl.scanForSensorType(tSensorType);
      // assert
      verify(mockBleRemoteDataSource.scanForSensorType(tSensorType));
      expectLater(result.getOrElse(() => null), emits([tSensor]));
    });

    test(
        'should return a IllegalArgumentFailure when a IllegalArgumentException is thrown',
        () async {
      // arrange
      when(mockBleRemoteDataSource.scanForSensorType(any)).thenThrow(
        IllegalArgumentException(),
      );
      // act
      final result = await pairingRepositoryImpl.scanForSensorType(tSensorType);
      // assert
      verify(mockBleRemoteDataSource.scanForSensorType(tSensorType));
      expect(
        result,
        Left(
          IllegalArgumentFailure(),
        ),
      );
    });
  });

  group("autoConnectSensors", () {
    test(
        'should return a BluetoothUnavailableFailure when a BluetoothUnavailableException is thrown',
        () async {
      // arrange
      when(
        mockBleRemoteDataSource.scanForSensors(),
      ).thenThrow(
        BluetoothUnavailableException(),
      );
      // act
      final result = await pairingRepositoryImpl.autoConnectSensors();
      // assert
      verify(mockBleRemoteDataSource.scanForSensors());
      expect(
        result,
        Left(
          BluetoothUnavailableFailure(),
        ),
      );
    });

    test(
        'should return a BluetoothOffFailure when a BluetoothOffException is thrown',
        () async {
      // arrange
      when(
        mockBleRemoteDataSource.scanForSensors(),
      ).thenThrow(
        BluetoothOffException(),
      );
      // act
      final result = await pairingRepositoryImpl.autoConnectSensors();
      // assert
      verify(mockBleRemoteDataSource.scanForSensors());
      expect(
        result,
        Left(
          BluetoothOffFailure(),
        ),
      );
    });

    test('should return a stream of sensorbundle containing the sensor-types',
        () async {
      // arrange
      final CadenceSensorModel tCadenceSensorModel = CadenceSensorModel(
        name: "name",
        id: "id",
        bluetoothDevice: null,
      );
      final CadenceSensor tCadenceSensor = CadenceSensor.fromSensor(
        tCadenceSensorModel,
      );
      final tHeartRateSensorModel = HeartRateSensorModel(
        name: "name",
        id: "id",
        bluetoothDevice: null,
      );
      final tHeartRateSensor = HeartRateSensor.fromSensor(
        tHeartRateSensorModel,
      );
      final tFitnessMachineSensorModel = FitnessMachineSensorModel(
        name: "name",
        id: "id",
        bluetoothDevice: null,
      );
      final tFitnessMachineSensor = FitnessMachineSensor.fromSensor(
        tFitnessMachineSensorModel,
      );
      final tSensorBundle1 = SensorBundle(
        cadenceSensor: tCadenceSensor,
        heartRateSensor: null,
        fitnessMachineSensor: null,
      );
      final tSensorBundle2 = SensorBundle(
        cadenceSensor: tCadenceSensor,
        heartRateSensor: tHeartRateSensor,
        fitnessMachineSensor: tFitnessMachineSensor,
      );
      when(mockBleRemoteDataSource.scanForSensors()).thenAnswer(
        (_) => Future.value(
          Stream.fromIterable(
            [
              [
                tCadenceSensorModel,
              ],
              [
                tCadenceSensorModel,
                tHeartRateSensorModel,
                tFitnessMachineSensorModel,
              ],
            ],
          ),
        ),
      );
      // act
      final result = await pairingRepositoryImpl.autoConnectSensors();
      // assert
      expectLater(
        result.getOrElse(() => null),
        emitsInOrder(
          [
            tSensorBundle1,
            tSensorBundle2,
          ],
        ),
      );
    });
  });
}
