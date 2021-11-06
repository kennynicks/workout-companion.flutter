import 'dart:async';
import 'dart:developer';

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
  final List<Sensor> discoveredSensors = [];
  final List<Sensor> connectedSensors = [];
  PairingBloc({required this.sensorService}) : super(const _Initial()) {
    _discoveredSensorsSubscription = sensorService.discoveredSensorsStream.listen(onDiscoveredSensorsStream);
    _connectedSensorsSubscription = sensorService.connectedSensorsStream.listen(onConnectedSensorsStream);
  }

  void onDiscoveredSensorsStream(List<Sensor> newDiscoveredSensors) {
    log("onDiscoveredSensorsStream ${newDiscoveredSensors.length}");
    final bool discoveredSensorsChanged = !discoveredSensors.equals(newDiscoveredSensors);
    log("discoveredSensorsChanged = $discoveredSensorsChanged");
    if (discoveredSensorsChanged) {
      discoveredSensors.clear();
      discoveredSensors.addAll(newDiscoveredSensors);
      add(
        const PairingEvent.availableSensorChanged(),
      );
    }
  }

  void onConnectedSensorsStream(List<Sensor> newConnectedSensors) {
    log("onConnectedSensorsStream ${newConnectedSensors.length} ${DateTime.now()}");
    final bool connectedSensorsChanged = !connectedSensors.equals(newConnectedSensors);
    if (connectedSensorsChanged) {
      connectedSensors.clear();
      connectedSensors.addAll(newConnectedSensors);
      add(
        const PairingEvent.connectedSensorChanged(),
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
        log("pairing started");
        await sensorService.startScan([]);
        yield PairingState.pairing(
          connectedSensors: connectedSensors,
          availableSensors: discoveredSensors,
        );
      },
      availableSensorChanged: (e) async* {
        yield state.maybeMap(
          initial: (s) {
            sensorService.startScan([]);
            return PairingState.pairing(connectedSensors: connectedSensors, availableSensors: discoveredSensors);
          },
          pairing: (s) {
            return s.copyWith(availableSensors: discoveredSensors);
          },
          orElse: () {
            sensorService.stopScan();
            return const PairingState.paired();
          },
        );
      },
      connectedSensorChanged: (e) async* {
        yield state.map(
          initial: (s) {
            sensorService.startScan([]);
            return PairingState.pairing(connectedSensors: connectedSensors, availableSensors: discoveredSensors);
          },
          pairing: (s) {
            return s.copyWith(connectedSensors: connectedSensors);
          },
          paired: (s) {
            sensorService.startScan([]);
            return PairingState.pairing(connectedSensors: connectedSensors, availableSensors: discoveredSensors);
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
