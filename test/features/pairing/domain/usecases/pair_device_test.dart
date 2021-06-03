import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/domain/entities/cadence_sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/pair_device.dart';

class MockPairingRepository extends Mock implements PairingRepository {}

void main() {
  PairDevice usecase;
  MockPairingRepository mockPairingRepository;

  setUp(() {
    mockPairingRepository = MockPairingRepository();
    usecase = PairDevice(mockPairingRepository);
  });

  final tSensor = CadenceSensor(name: "name", id: "id", bluetoothDevice: null);

  test('should connect to the specific device using the repository', () async {
    // arrange
    when(mockPairingRepository.pairDevice(any))
        .thenAnswer((_) async => Right(null));
    // act
    final result = await usecase(Params(sensor: tSensor));
    // assert
    expect(result, Right(null));
    verify(mockPairingRepository.pairDevice(tSensor));
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
