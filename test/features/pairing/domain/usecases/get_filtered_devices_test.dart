import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/scan_for_sensor_type.dart';

class MockPairingRepository extends Mock implements PairingRepository {}

void main() {
  ScanForSensorType usecase;
  MockPairingRepository mockPairingRepository;

  setUp(() {
    mockPairingRepository = MockPairingRepository();
    usecase = ScanForSensorType(mockPairingRepository);
  });

  final tSensorType = SensorType.HeartRate;
  final tResult = Stream<List<Sensor>>.empty();

  test('should retrieve a list of devices matching the sensor-type', () async {
    // arrange
    when(mockPairingRepository.scanForSensorType(any))
        .thenAnswer((_) async => Right(tResult));
    // act
    final result = await usecase(Params(type: tSensorType));
    // assert
    expect(result, Right(tResult));
    verify(mockPairingRepository.scanForSensorType(tSensorType));
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
