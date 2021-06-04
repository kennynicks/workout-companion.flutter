import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/constants/service_uuids.dart';
import 'package:workout_companion_flutter/core/data/datasources/ble_remote_data_source.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:flutter_blue/gen/flutterblue.pb.dart' as proto;
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';

class MockFlutterBlue extends Mock implements FlutterBlue {}

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

void main() {
  MockFlutterBlue mockFlutterBlue;
  BleRemoteDataSourceImpl dataSource;

  setUp(() {
    mockFlutterBlue = MockFlutterBlue();
    dataSource = BleRemoteDataSourceImpl(
      flutterBlue: mockFlutterBlue,
    );
  });

  void setUpBluetoothAvailable() {
    when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
    when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
  }

  group("pairDevice", () {
    final tSensorModel = CadenceSensorModel(
      name: "name",
      id: "id",
      bluetoothDevice: MockBluetoothDevice(),
    );
    test(
        'should throw BluetoothUnavailableExcepion when bluetooth is not available',
        () async {
      // arrange
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => false);
      when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
      // act
      final call = dataSource.pairDevice;
      // assert
      try {
        await call(tSensorModel);
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<BluetoothUnavailableException>(),
        );
      }
    });

    test('should throw BluetoothOffException when bluetooth is turned off',
        () async {
      // arrange
      when(mockFlutterBlue.isOn).thenAnswer((_) async => false);
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
      // act
      final call = dataSource.pairDevice;
      // assert
      try {
        await call(tSensorModel);
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<BluetoothOffException>(),
        );
      }
    });

    test('should check if bluetooth is available and on', () async {
      // arrange
      when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
      // act
      await dataSource.pairDevice(tSensorModel);
      // assert
      verify(mockFlutterBlue.isAvailable);
      verify(mockFlutterBlue.isOn);
    });

    test('should connect to the device with autoConnect set to true', () async {
      // arrange
      setUpBluetoothAvailable();
      // act
      await dataSource.pairDevice(tSensorModel);
      // assert
      verify(tSensorModel.bluetoothDevice.connect(autoConnect: true));
    });
  });

  group("scanForSensorType", () {
    final tSensorType = SensorType.Cadence;
    test(
        'should throw BluetoothUnavailableExcepion when bluetooth is not available',
        () async {
      // arrange
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => false);
      when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
      // act
      final call = dataSource.scanForSensorType;
      // assert
      try {
        await call(tSensorType);
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<BluetoothUnavailableException>(),
        );
      }
    });

    test('should throw BluetoothOffException when bluetooth is turned off',
        () async {
      // arrange
      when(mockFlutterBlue.isOn).thenAnswer((_) async => false);
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
      // act
      final call = dataSource.scanForSensorType;
      // assert
      try {
        await call(tSensorType);
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<BluetoothOffException>(),
        );
      }
    });

    test('should check if bluetooth is available and on', () async {
      // arrange
      when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
      when(mockFlutterBlue.scanResults).thenAnswer(
        (_) => Stream.empty(),
      );
      // act
      await dataSource.scanForSensorType(tSensorType);
      // assert
      verify(mockFlutterBlue.isAvailable);
      verify(mockFlutterBlue.isOn);
    });

    test('should start a scan and filter for services based on the sensor type',
        () async {
      // arrange
      setUpBluetoothAvailable();
      final ScanResult scanResult = ScanResult.fromProto(
        proto.ScanResult(
          advertisementData: proto.AdvertisementData(
            serviceUuids: CADENCE_SENSOR_ADVERTISEMENT_SERVICES,
          ),
          device: proto.BluetoothDevice(
            name: "name",
            remoteId: "id",
          ),
        ),
      );
      final tCadenceSensorModel = CadenceSensorModel(
        name: "name",
        id: "id",
        bluetoothDevice: scanResult.device,
      );
      when(mockFlutterBlue.scanResults).thenAnswer(
        (_) => Stream.fromIterable(
          [
            [scanResult]
          ],
        ),
      );
      // act
      final result = await dataSource.scanForSensorType(tSensorType);
      // assert
      //TODO use case for stopping the scan
      verify(mockFlutterBlue.stopScan());
      verify(
        mockFlutterBlue.startScan(
          allowDuplicates: false,
          withServices: CADENCE_SENSOR_ADVERTISEMENT_SERVICES
              .map(
                (uuid) => Guid(uuid),
              )
              .toList(),
        ),
      );
      expectLater(result, emits([tCadenceSensorModel]));
    });

    test('should throw a IllegalArgumentException if SensorType is unknown',
        () async {
      // arrange
      setUpBluetoothAvailable();
      // act
      final call = dataSource.scanForSensorType;
      // assert
      try {
        await call(SensorType.Unknown);
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<IllegalArgumentException>(),
        );
      }
    });
  });

  group("scanForSensors", () {
    test(
        'should throw BluetoothUnavailableExcepion when bluetooth is not available',
        () async {
      // arrange
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => false);
      when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
      // act
      final call = dataSource.scanForSensors;
      // assert
      try {
        await call();
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<BluetoothUnavailableException>(),
        );
      }
    });

    test('should throw BluetoothOffException when bluetooth is turned off',
        () async {
      // arrange
      when(mockFlutterBlue.isOn).thenAnswer((_) async => false);
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
      // act
      final call = dataSource.scanForSensors;
      // assert
      try {
        await call();
        fail("Exception not thrown");
      } catch (e) {
        expect(
          e,
          isA<BluetoothOffException>(),
        );
      }
    });

    test('should check if bluetooth is available and on', () async {
      // arrange
      when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
      when(mockFlutterBlue.scanResults).thenAnswer(
        (_) => Stream.empty(),
      );
      // act
      await dataSource.scanForSensors();
      // assert
      verify(mockFlutterBlue.isAvailable);
      verify(mockFlutterBlue.isOn);
    });

    test('should start a scan and filter for sensors', () async {
      // arrange
      setUpBluetoothAvailable();
      final ScanResult scanResult = ScanResult.fromProto(
        proto.ScanResult(
          advertisementData: proto.AdvertisementData(
            serviceUuids: CADENCE_SENSOR_ADVERTISEMENT_SERVICES,
          ),
          device: proto.BluetoothDevice(
            name: "name",
            remoteId: "id",
          ),
        ),
      );
      final tCadenceSensorModel = CadenceSensorModel(
        name: "name",
        id: "id",
        bluetoothDevice: scanResult.device,
      );
      when(mockFlutterBlue.scanResults).thenAnswer(
        (_) => Stream.fromIterable(
          [
            [scanResult]
          ],
        ),
      );
      // act
      final result = await dataSource.scanForSensors();
      // assert
      verify(mockFlutterBlue.stopScan());
      verify(
        mockFlutterBlue.startScan(
          allowDuplicates: false,
          withServices: (CADENCE_SENSOR_ADVERTISEMENT_SERVICES +
                  HEART_RATE_SENSOR_ADVERTISEMENT_SERVICES +
                  FITNESS_MACHINE_SENSOR_ADVERTISEMENT_SERVICES)
              .map(
                (service) => Guid(service),
              )
              .toList(),
        ),
      );
      expectLater(result, emits([tCadenceSensorModel]));
    });
  });

  group("stopScan", () {
    test('should stop the scanning process', () async {
      // arrange

      // act
      await dataSource.stopScan();
      // assert
      verify(mockFlutterBlue.stopScan());
    });
  });
}
