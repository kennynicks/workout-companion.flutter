part of 'pairing_bloc.dart';

@freezed
class PairingEvent with _$PairingEvent {
  const factory PairingEvent.pairingStarted() = _PairingStarted;
  const factory PairingEvent.availableServicesChanged({required List<ServiceType> availableServices}) = _AvailableServicesChanged;
  const factory PairingEvent.connectedServicesChanged({required List<ServiceType> connectedServices}) = _ConnectedServicesChanged;
}
