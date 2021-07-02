import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/domain/core/sensors/i_sensor_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';

part 'heartrate_event.dart';
part 'heartrate_state.dart';
part 'heartrate_bloc.freezed.dart';

@injectable
class HeartrateBloc extends Bloc<HeartrateEvent, HeartrateState> {
  final ISensorRepository _sensorRepository;
  StreamSubscription? sensorSubscription;
  HeartrateBloc(this._sensorRepository) : super(const _Initial());

  @override
  Stream<HeartrateState> mapEventToState(
    HeartrateEvent event,
  ) async* {
    yield* event.map(searchStarted: (e) async* {
      yield const HeartrateState.searching();
      await sensorSubscription?.cancel();
      (await _sensorRepository.scanForSensorType(const SensorType.heartrate()))
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
    }, searchStopped: (e) async* {
      await sensorSubscription?.cancel();
      yield const HeartrateState.initial();
    }, invokedDisconnect: (e) async* {
      //TODO implement
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
      yield HeartrateState.connected(e.heartrateSensor, e.bpm);
    }, sensorConnected: (e) async* {
      log("sensor connected");
      yield HeartrateState.connected(e.heartrateSensor, null);
    });
  }

  @override
  Future<void> close() async {
    await sensorSubscription?.cancel();
    return super.close();
  }
}
