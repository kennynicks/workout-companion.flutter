import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/get_filtered_devices.dart';

class MockPairingRepository extends Mock implements PairingRepository {}

void main() {
  GetFilteredDevices usecase;
  MockPairingRepository mockPairingRepository;

  setUp(() {
    mockPairingRepository = MockPairingRepository();
    usecase = GetFilteredDevices(mockPairingRepository);
  });

  final tSensorType = SensorType.HeartRate;
  final tResult = Stream<List<Sensor>>.empty();

  test('should retrieve a list of devices matching the sensor-type', () {
    // arrange
    when(mockPairingRepository.getFilteredDevices(any))
        .thenReturn(Right(tResult));
    // act
    final result = usecase(Params(type: tSensorType));
    // assert
    expect(result, Right(tResult));
    verify(mockPairingRepository.getFilteredDevices(tSensorType));
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
