import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/domain/core/sensors/i_sensor_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';
import 'package:workout_companion_flutter/infrastructure/core/sensors/cadence/cadence_repository.dart';

part 'cadence_event.dart';
part 'cadence_state.dart';
part 'cadence_bloc.freezed.dart';

@singleton
class CadenceBloc extends Bloc<CadenceEvent, CadenceState> {
  final ISensorRepository _sensorRepository;
  StreamSubscription? sensorSubscription;
  CadenceBloc(this._sensorRepository) : super(const CadenceState.initial());

  @override
  Stream<CadenceState> mapEventToState(
    CadenceEvent event,
  ) async* {
    yield* event.map(
      searchStarted: (e) async* {
        yield* state.maybeMap(connected: (e) async* {
          log("already connected");
          yield e;
          e.cadenceRepository.startMonitoring(e.cadenceRepository.sensor!);
        }, orElse: () async* {
          yield const CadenceState.searching();
          await sensorSubscription?.cancel();
          (await _sensorRepository
                  .scanForSensorType(const SensorType.cadence()))
              .fold((l) {
            log(l.toString());
            add(const CadenceEvent.searchStopped());
          }, (r) {
            log("started listening for cadence-sensors...");
            sensorSubscription = r.listen((sensors) async {
              log("sensors: $sensors");
              if (sensors.isNotEmpty) {
                add(CadenceEvent.invokedPairing(sensors[0]));
              }
            });
          });
        });
      },
      searchStopped: (e) async* {
        log("STATE: search stopped");
        await sensorSubscription?.cancel();
        yield const CadenceState.disconnected();
      },
      invokedDisconnect: (e) async* {
        //TODO implement
        log("invoked disconnect!");
        yield const CadenceState.disconnected();
      },
      invokedPairing: (e) async* {
        log("invoking pairing");
        await sensorSubscription?.cancel();
        final sensor = e.cadenceSensor;
        final result = await _sensorRepository.pairDevice(sensor);
        result.fold((l) {
          log(l.toString());
          add(const CadenceEvent.searchStopped());
        }, (r) {
          log("sensor connected");
          add(CadenceEvent.sensorConnected(sensor));
        });
      },
      valueTransmitted: (e) async* {
        log("CadenceBloc: VALUE TRANSMITTED");
        yield CadenceState.connected(e.cadenceRepository, e.rpm);
      },
      sensorConnected: (e) async* {
        log("CadenceBloc: sensor connected");
        final CadenceRepository cadenceRepository = CadenceRepository();
        cadenceRepository.onRpm = (int rpm) =>
            add(CadenceEvent.valueTransmitted(cadenceRepository, rpm));
        cadenceRepository.onDisconnect =
            () => add(const CadenceEvent.sensorDisconnected());
        yield CadenceState.connected(cadenceRepository, null);
        await cadenceRepository.startMonitoring(e.cadenceSensor);
      },
      sensorDisconnected: (e) async* {
        if (state is _Connected) {
          (state as _Connected).cadenceRepository.stopMonitoring();
        }
        yield CadenceState.disconnected();
        log("sensor disconnected");
      },
    );
  }
}
