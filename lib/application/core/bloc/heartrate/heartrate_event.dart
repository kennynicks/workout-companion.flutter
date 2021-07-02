part of 'heartrate_bloc.dart';

@freezed
class HeartrateEvent with _$HeartrateEvent {
  const factory HeartrateEvent.searchStarted() = _SearchStarted;
  const factory HeartrateEvent.searchStopped() = _SearchStopped;
  const factory HeartrateEvent.invokedDisconnect() = _InvokedDisconnect;
  const factory HeartrateEvent.invokedPairing() = _InvokedPairing;
  const factory HeartrateEvent.valueTransmitted(int bpm) = _ValueTransmitted;
}
