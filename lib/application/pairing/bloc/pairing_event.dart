part of 'pairing_bloc.dart';

@freezed
class PairingEvent with _$PairingEvent {
  const factory PairingEvent.pairingStarted() = _PairingStarted;
  const factory PairingEvent.pairingSkipped() = _PairingSkipped;
  const factory PairingEvent.cadenceConnected() = _CadenceConnected;
  const factory PairingEvent.heartrateConnected() = _HeartrateConnected;
  const factory PairingEvent.fitnessmachineConnected() =
      _FitnessmachineConnected;
  const factory PairingEvent.cadenceDisconnected() = _CadenceDisconnected;
  const factory PairingEvent.heartrateDisconnected() = _HeartrateDisconnected;
  const factory PairingEvent.fitnessmachineDisconnected() =
      _FitnessmachineDisconnected;
}
