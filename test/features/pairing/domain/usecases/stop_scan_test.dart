import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:workout_companion_flutter/core/domain/usecases/usecase.dart';
import 'package:workout_companion_flutter/features/pairing/domain/repositories/pairing_repository.dart';
import 'package:workout_companion_flutter/features/pairing/domain/usecases/stop_scan.dart';

class MockPairingRepository extends Mock implements PairingRepository {}

void main() {
  StopScan usecase;
  MockPairingRepository mockPairingRepository;

  setUp(() {
    mockPairingRepository = MockPairingRepository();
    usecase = StopScan(mockPairingRepository);
  });

  test('should stop the scan using the repository', () async {
    // arrange
    when(mockPairingRepository.stopScan()).thenAnswer((_) async => Right(null));
    // act
    final result = await usecase(
      NoParams(),
    );
    // assert
    expect(result, Right(null));
    verify(mockPairingRepository.stopScan());
    verifyNoMoreInteractions(mockPairingRepository);
  });
}
