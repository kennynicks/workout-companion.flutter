part of 'pairing_bloc.dart';

@freezed
class PairingState with _$PairingState {
  const factory PairingState.initial() = _Initial;
  const factory PairingState.pairing() = _Pairing; //TODO has sensors
  const factory PairingState.paired() = _Paired; //TODO has sensors
}
