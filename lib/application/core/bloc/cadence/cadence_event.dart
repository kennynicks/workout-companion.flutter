part of 'cadence_bloc.dart';

@freezed
class CadenceEvent with _$CadenceEvent {
  const factory CadenceEvent.searchStarted() = _SearchStarted;
  const factory CadenceEvent.searchStopped() = _SearchStopped;
  const factory CadenceEvent.invokedDisconnect() = _InvokedDisconnect;
  const factory CadenceEvent.invokedPairing() = _InvokedPairing;
  const factory CadenceEvent.valueTransmitted(int cadence) = _ValueTransmitted;
}
