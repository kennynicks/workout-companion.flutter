import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

part 'pairing_event.dart';
part 'pairing_state.dart';
part 'pairing_bloc.freezed.dart';

@singleton
class PairingBloc extends Bloc<PairingEvent, PairingState> {
  PairingBloc() : super(const _Initial());

  @override
  Stream<PairingState> mapEventToState(PairingEvent event) async* {
    yield* event.map(
      pairingStarted: (e) async* {
        yield PairingState.pairing(connectedSensors: List.empty(), availableSensors: List.empty());
      },
      availableSensorChanged: (e) async* {
        yield state.maybeMap(
          initial: (s) {
            return PairingState.pairing(connectedSensors: List.empty(), availableSensors: e.availableSensors);
          },
          pairing: (s) {
            return s.copyWith(availableSensors: e.availableSensors);
          },
          orElse: () {
            return const PairingState.paired();
          },
        );
      },
      connectedSensorChanged: (e) async* {
        yield state.map(
          initial: (s) {
            return PairingState.pairing(connectedSensors: e.connectedSensors, availableSensors: List.empty());
          },
          pairing: (s) {
            return s.copyWith(availableSensors: List.empty(), connectedSensors: e.connectedSensors);
          },
          paired: (s) {
            return PairingState.pairing(connectedSensors: e.connectedSensors, availableSensors: List.empty());
          },
        );
      },
      connectSensor: (e) async* {
        //TODO trigger connect to sensor
        yield state;
      },
      disconnectSensor: (e) async* {
        //TODO trigger disconnect to sensor
        yield state;
      },
    );
  }
}
