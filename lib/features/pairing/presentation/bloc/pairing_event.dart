part of 'pairing_bloc.dart';

abstract class PairingEvent extends Equatable {
  const PairingEvent();

  @override
  List<Object> get props => [];
}

class PairDevice extends PairingEvent {
  final Sensor sensor;

  PairDevice({@required this.sensor});
  @override
  List<Object> get props => [sensor];
}

class ScanForSensorType extends PairingEvent {
  final SensorType sensorType;

  ScanForSensorType({@required this.sensorType});
  @override
  List<Object> get props => [sensorType];
}

class StopScan extends PairingEvent {}

class AutoConnectSensors extends PairingEvent {}
