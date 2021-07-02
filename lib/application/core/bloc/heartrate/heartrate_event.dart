part of 'heartrate_bloc.dart';

@freezed
class HeartrateEvent with _$HeartrateEvent {
  const factory HeartrateEvent.searchStarted() = _SearchStarted;
  const factory HeartrateEvent.searchStopped() = _SearchStopped;
  const factory HeartrateEvent.invokedDisconnect() = _InvokedDisconnect;
  const factory HeartrateEvent.invokedPairing(Sensor heartrateSensor) =
      _InvokedPairing;
  const factory HeartrateEvent.valueTransmitted(
      HeartrateRepository heartrateRepository, int bpm) = _ValueTransmitted;
  const factory HeartrateEvent.sensorConnected(Sensor heartrateSensor) =
      _SensorConnected;
  const factory HeartrateEvent.sensorDisconnected() = _SensorDisconnected;
}
