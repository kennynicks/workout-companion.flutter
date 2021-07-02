part of 'fitnessmachine_bloc.dart';

@freezed
class FitnessmachineEvent with _$FitnessmachineEvent {
  const factory FitnessmachineEvent.searchStarted() = _SearchStarted;
  const factory FitnessmachineEvent.searchStopped() = _SearchStopped;
  const factory FitnessmachineEvent.invokedDisconnect() = _InvokedDisconnect;
  const factory FitnessmachineEvent.invokedPairing() = _InvokedPairing;
  const factory FitnessmachineEvent.valueTransmitted(int watt) =
      _ValueTransmitted;
}
