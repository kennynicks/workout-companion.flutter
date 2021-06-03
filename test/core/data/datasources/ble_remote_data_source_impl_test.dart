import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/data/datasources/ble_remote_data_source.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:flutter_blue/gen/flutterblue.pb.dart' as proto;

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
}
//   BluetoothDevice createBluetoothDevice(String id, String name) {
//     proto.BluetoothDevice p = proto.BluetoothDevice();
//     p.remoteId = id;
//     p.name = name;
//     return BluetoothDevice.fromProto(p);
//   }

//   void setUpBluetoothAvailable() {
//     when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
//     when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
//   }

//   group('getConnectedDevicesStream', () {
//     test(
//         'should throw BluetoothUnavailableException when bluetooth is not available',
//         () async {
//       // arrange
//       when(mockFlutterBlue.isAvailable).thenAnswer((_) async => false);
//       when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
//       // act
//       final call = dataSource.getConnectedDevicesStream;
//       // assert
//       expect(() => call(), throwsA(isA<BluetoothUnavailableException>()));
//     });

//     test('should throw BluetoothOffException when bluetooth is turned off',
//         () async {
//       // arrange
//       final tId = "tId";
//       final tName = "tName";
//       final tBleDevice = createBluetoothDevice(tId, tName);
//       final tBleResult = [tBleDevice];
//       when(mockFlutterBlue.connectedDevices)
//           .thenAnswer((_) async => tBleResult);
//       when(mockFlutterBlue.isOn).thenAnswer((_) async => false);
//       when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
//       // act
//       final call = dataSource.getConnectedDevicesStream;
//       // assert
//       expect(() => call(), throwsA(isA<BluetoothOffException>()));
//     });

//     test('should check if bluetooth is available and on', () async {
//       // arrange
//       final tId = "tId";
//       final tName = "tName";
//       final tBleDevice = createBluetoothDevice(tId, tName);
//       final tBleResult = [tBleDevice];
//       when(mockFlutterBlue.connectedDevices)
//           .thenAnswer((_) async => tBleResult);
//       when(mockFlutterBlue.isOn).thenAnswer((_) async => true);
//       when(mockFlutterBlue.isAvailable).thenAnswer((_) async => true);
//       // act
//       await dataSource.getConnectedDevicesStream();
//       // assert
//       verify(mockFlutterBlue.isAvailable);
//       verify(mockFlutterBlue.isOn);
//     });

//     test('should return a Stream of Sensors which are connected', () async {
//       // arrange
//       setUpBluetoothAvailable();
//       final tId = "tId";
//       final tName = "tName";
//       final tType = SensorType.Cadence;
//       final tSensor = SensorModel(
//         id: tId,
//         name: tName,
//         type: tType,
//       );
//       final tResult = [tSensor];
//       final tBleDevice = createBluetoothDevice(tId, tName);
//       final tBleResult = [tBleDevice];
//       when(mockFlutterBlue.connectedDevices)
//           .thenAnswer((_) async => tBleResult);
//       // act
//       final result = await dataSource.getConnectedDevicesStream();
//       // assert
//       verify(mockFlutterBlue.connectedDevices);
//       expect(await result.first, tResult);
//     });
//   });
// }
