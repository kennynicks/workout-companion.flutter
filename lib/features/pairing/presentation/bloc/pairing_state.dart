part of 'pairing_bloc.dart';

abstract class PairingState extends Equatable {
  const PairingState();

  @override
  List<Object> get props => [];
}

class Empty extends PairingState {}

class Loading extends PairingState {}

class Error extends PairingState {
  final String message;
  Error({@required this.message});

  @override
  List<Object> get props => [message];
}

class PairedDevice extends PairingState {}

class StoppedScan extends PairingState {}

class StartedAutoPairing extends PairingState {
  final Stream<SensorBundle> sensorBundleStream;
  StartedAutoPairing({@required this.sensorBundleStream});

  @override
  List<Object> get props => [sensorBundleStream];
}

class StartedScanForType extends PairingState {
  final Stream<List<Sensor>> sensorStream;
  StartedScanForType({@required this.sensorStream});

  @override
  List<Object> get props => [sensorStream];
}
