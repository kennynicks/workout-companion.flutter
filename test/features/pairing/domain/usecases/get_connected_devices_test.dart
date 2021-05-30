import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/get_connected_devices.dart';

class MockPairingRepository extends Mock implements PairingRepository {}

void main() {
  GetConnectedDevices usecase;
  MockPairingRepository mockPairingRepository;

  setUp(() {
    mockPairingRepository = MockPairingRepository();
    usecase = GetConnectedDevices(mockPairingRepository);
  });

  final tResult = Stream<List<Sensor>>.empty();

  test('should retrieve a list of connected devices', () async {
    // arrange
    when(mockPairingRepository.listenToConnectedDevices())
        .thenAnswer((_) async => Right(tResult));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(tResult));
    verify(mockPairingRepository.listenToConnectedDevices());
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
