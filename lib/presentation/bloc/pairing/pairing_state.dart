part of 'pairing_bloc.dart';

@freezed
class PairingState with _$PairingState {
  const factory PairingState.initial() = _Initial;
  const factory PairingState.pairing({
    required List<Sensor> connectedSensors,
    required List<Sensor> availableSensors,
  }) = _Pairing;
  const factory PairingState.paired() = _Paired;
}
