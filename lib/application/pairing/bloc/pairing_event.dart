part of 'pairing_bloc.dart';

@freezed
class PairingEvent with _$PairingEvent {
  const factory PairingEvent.pairingStarted() = _PairingStarted;
  const factory PairingEvent.pairingSkipped() = _PairingSkipped;
}
