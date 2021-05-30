import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/data/datasources/ble_datasource.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';

class MockFlutterBlue extends Mock implements FlutterBlue {}

void main() {
  MockFlutterBlue mockFlutterBlue;
  BleDataSourceImpl dataSource;

  setUp(() {
    mockFlutterBlue = MockFlutterBlue();
    dataSource = BleDataSourceImpl(
      flutterBlue: mockFlutterBlue,
    );
  });

  group('getConnectedDevicesStream', () {
    test(
        'should throw BluetoothUnavailableException when bluetooth is not available',
        () async {
      // arrange
      when(mockFlutterBlue.isAvailable).thenAnswer((_) async => false);
      // act
      final call = dataSource.getConnectedDevicesStream;
      // assert
      expect(() => call(), throwsA(isA<BluetoothUnavailableException>()));
      verify(mockFlutterBlue.isAvailable);
    });
  });
}
