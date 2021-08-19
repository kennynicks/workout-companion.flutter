part of 'cadence_bloc.dart';

@freezed
class CadenceEvent with _$CadenceEvent {
  const factory CadenceEvent.searchStarted() = _SearchStarted;
  const factory CadenceEvent.searchStopped() = _SearchStopped;
  const factory CadenceEvent.invokedDisconnect() = _InvokedDisconnect;
  const factory CadenceEvent.invokedPairing(Sensor cadenceSensor) =
      _InvokedPairing;
  const factory CadenceEvent.valueTransmitted(
      CadenceRepository cadenceRepository, int rpm) = _ValueTransmitted;
  const factory CadenceEvent.sensorConnected(Sensor cadenceSensor) =
      _SensorConnected;
  const factory CadenceEvent.sensorDisconnected() = _SensorDisconnected;
}
