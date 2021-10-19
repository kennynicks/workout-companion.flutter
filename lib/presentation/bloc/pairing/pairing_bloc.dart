import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';
import 'package:workout_companion_flutter/services/sensor_service.dart';

part 'pairing_event.dart';
part 'pairing_state.dart';
part 'pairing_bloc.freezed.dart';

@singleton
class PairingBloc extends Bloc<PairingEvent, PairingState> {
  final SensorService sensorService;
  late final StreamSubscription _discoveredSensorsSubscription;
  late final StreamSubscription _connectedSensorsSubscription;
  final List<Sensor> discoveredSensors = List.empty();
  final List<Sensor> connectedSensors = List.empty();
  PairingBloc(this._connectedSensorsSubscription, {required this.sensorService}) : super(const _Initial()) {
    _discoveredSensorsSubscription = sensorService.discoveredSensorsStream.listen(onDiscoveredSensorsStream);
    _connectedSensorsSubscription = sensorService.connectedSensorsStream.listen(onConnectedSensorsStream);
  }

  void onDiscoveredSensorsStream(List<Sensor> newDiscoveredSensors) {
    final bool discoveredSensorsChanged = discoveredSensors.equals(newDiscoveredSensors);
    if (discoveredSensorsChanged) {
      discoveredSensors.clear();
      discoveredSensors.addAll(newDiscoveredSensors);
      add(
        PairingEvent.availableSensorChanged(availableSensors: discoveredSensors),
      );
    }
  }

  void onConnectedSensorsStream(List<Sensor> newConnectedSensors) {
    final bool connectedSensorsChanged = connectedSensors.equals(newConnectedSensors);
    if (connectedSensorsChanged) {
      connectedSensors.clear();
      connectedSensors.addAll(newConnectedSensors);
      add(
        PairingEvent.connectedSensorChanged(connectedSensors: connectedSensors),
      );
    }
  }

  @override
  Future<void> close() {
    _discoveredSensorsSubscription.cancel();
    _connectedSensorsSubscription.cancel();
    return super.close();
  }

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
        sensorService.connectSensor(e.sensor);
        yield state;
      },
      disconnectSensor: (e) async* {
        sensorService.disconnectSensor(e.sensor);
        yield state;
      },
    );
  }
}
