part of 'pairing_bloc.dart';

@freezed
class PairingState with _$PairingState {
  const factory PairingState.initial() = _Initial;
  const factory PairingState.pairing({
    required List<ServiceType> connectedServices,
    required List<ServiceType> availableServices,
  }) = _Pairing;
  const factory PairingState.paired() = _Paired;
}
