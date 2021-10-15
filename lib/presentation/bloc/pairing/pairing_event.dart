part of 'pairing_bloc.dart';

@freezed
class PairingEvent with _$PairingEvent {
  const factory PairingEvent.pairingStarted() = _PairingStarted;
  const factory PairingEvent.availableSensorChanged({required List<Sensor> availableSensors}) = _AvailableSensorChanged;
  const factory PairingEvent.connectedSensorChanged({required List<Sensor> connectedSensors}) = _ConnectedSensorChanged;
  const factory PairingEvent.connectSensor({required Sensor sensor}) = _ConnectSensor;
  const factory PairingEvent.disconnectSensor({required Sensor sensor}) = _DisconnectSensor;
}
