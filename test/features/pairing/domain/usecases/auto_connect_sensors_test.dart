import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/entities/SensorBundle.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/auto_connect_sensors.dart';

class MockPairingRepository extends Mock implements PairingRepository {}

void main() {
  AutoConnectSensors usecase;
  MockPairingRepository mockPairingRepository;

  setUp(() {
    mockPairingRepository = MockPairingRepository();
    usecase = AutoConnectSensors(mockPairingRepository);
  });

  final tResult = Stream<SensorBundle>.empty();

  test('should retrieve a stream of connected sensors in a bundle', () async {
    // arrange
    when(mockPairingRepository.autoConnectSensors())
        .thenAnswer((_) async => Right(tResult));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(tResult));
    verify(mockPairingRepository.autoConnectSensors());
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
