import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/domain/core/sensors/heartrate/i_heartrate_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/i_sensor_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';
import 'package:workout_companion_flutter/domain/core/sensors/service_uuids.dart';
import 'package:workout_companion_flutter/infrastructure/core/sensors/heartrate/heartrate_repository.dart';

part 'heartrate_event.dart';
part 'heartrate_state.dart';
part 'heartrate_bloc.freezed.dart';

@singleton
class HeartrateBloc extends Bloc<HeartrateEvent, HeartrateState> {
  final ISensorRepository _sensorRepository;
  StreamSubscription? sensorSubscription;
  StreamSubscription? hearbeatSensorSubscription;
  HeartrateBloc(this._sensorRepository) : super(const HeartrateState.initial());

  @override
  Stream<HeartrateState> mapEventToState(
    HeartrateEvent event,
  ) async* {
    yield* event.map(searchStarted: (e) async* {
      yield* state.maybeMap(connected: (e) async* {
        log("already connected");
        yield e;
        e.heartrateRepository.startMonitoring(e.heartrateRepository.sensor!);
      }, orElse: () async* {
        yield const HeartrateState.searching();
        await sensorSubscription?.cancel();
        (await _sensorRepository
                .scanForSensorType(const SensorType.heartrate()))
            .fold((l) {
          log(l.toString());
          add(const HeartrateEvent.searchStopped());
        }, (r) {
          log("started listening for sensors...");
          sensorSubscription = r.listen((sensors) async {
            log("sensors: $sensors");
            if (sensors.isNotEmpty) {
              add(HeartrateEvent.invokedPairing(sensors[0]));
            }
          });
        });
      });
    }, searchStopped: (e) async* {
      log("STATE: search stopped");
      await sensorSubscription?.cancel();
      yield const HeartrateState.disconnected();
    }, invokedDisconnect: (e) async* {
      //TODO implement
      log("invoked disconnect!");
      yield const HeartrateState.disconnected();
    }, invokedPairing: (e) async* {
      log("invoking pairing");
      await sensorSubscription?.cancel();
      final sensor = e.heartrateSensor;
      final result = await _sensorRepository.pairDevice(sensor);
      result.fold((l) {
        log(l.toString());
        add(const HeartrateEvent.searchStopped());
      }, (r) {
        log("sensor connected");
        add(HeartrateEvent.sensorConnected(sensor));
      });
    }, valueTransmitted: (e) async* {
      log("HeartrateBloc: VALUE TRANSMITTED");
      yield HeartrateState.connected(e.heartrateRepository, e.bpm);
    }, sensorConnected: (e) async* {
      log("HeartrateBloc: sensor connected");
      final HeartrateRepository heartrateRepository = HeartrateRepository();
      heartrateRepository.onBpm = (int bpm) =>
          add(HeartrateEvent.valueTransmitted(heartrateRepository, bpm));
      heartrateRepository.onDisconnect =
          () => add(const HeartrateEvent.sensorDisconnected());
      yield HeartrateState.connected(heartrateRepository, null);
      await heartrateRepository.startMonitoring(e.heartrateSensor);
    }, sensorDisconnected: (e) async* {
      if (state is _Connected) {
        (state as _Connected).heartrateRepository.stopMonitoring();
      }
      yield HeartrateState.disconnected();
      log("sensor disconnected");
    });
  }

  @override
  Future<void> close() async {
    await sensorSubscription?.cancel();
    if (state is _Connected) {
      (state as _Connected).heartrateRepository.stopMonitoring();
    }
    return super.close();
  }
}
