part of 'pairing_bloc.dart';

@freezed
class PairingState with _$PairingState {
  const factory PairingState.initial() = _Initial;
  const factory PairingState.pairing({
    required bool cadenceConnected,
    required bool heartrateConnected,
    required bool fitnessmachineConnected,
  }) = _Pairing;
  const factory PairingState.paired() = _Paired; //TODO has sensors
}
