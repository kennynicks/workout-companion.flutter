import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
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

  final tMacAddress = "8D-58-E5-EA-80-7F";

  test('should connect to the specific device using the repository', () async {
    // arrange
    when(mockPairingRepository.pairDevice(any))
        .thenAnswer((_) async => Right(null));
    // act
    final result = await usecase(Params(macAddress: tMacAddress));
    // assert
    expect(result, Right(null));
    verify(mockPairingRepository.pairDevice(tMacAddress));
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
