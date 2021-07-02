import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/domain/core/sensors/i_sensor_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor_type.dart';
import 'package:workout_companion_flutter/domain/core/sensors/service_uuids.dart';

part 'heartrate_event.dart';
part 'heartrate_state.dart';
part 'heartrate_bloc.freezed.dart';

@singleton
class HeartrateBloc extends Bloc<HeartrateEvent, HeartrateState> {
  final ISensorRepository _sensorRepository;
  StreamSubscription? sensorSubscription;
  StreamSubscription? hearbeatSensorSubscription;
  HeartrateBloc(this._sensorRepository) : super(const _Initial());

  @override
  Stream<HeartrateState> mapEventToState(
    HeartrateEvent event,
  ) async* {
    yield* event.map(searchStarted: (e) async* {
      yield* state.maybeMap(connected: (e) async* {
        log("already connected");
        yield e;
        await _retrieveDataFromSensor(e.heartrateSensor);
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
      log("HeartrateBloc: VALUE TRANSMITTED");
      yield HeartrateState.connected(e.heartrateSensor, e.bpm);
    }, sensorConnected: (e) async* {
      log("HeartrateBloc: sensor connected");
      yield HeartrateState.connected(e.heartrateSensor, null);
      await _retrieveDataFromSensor(e.heartrateSensor);
    });
  }

  Future _retrieveDataFromSensor(Sensor heartrateSensor) async {
    List<BluetoothService> services =
        (await heartrateSensor.bluetoothDevice.discoverServices())
            .where((service) => HEART_RATE_SENSOR_ADVERTISEMENT_SERVICES
                .contains(service.uuid.toString()))
            .toList();
    log("services: ${services.map((service) => service.uuid)}");
    for (BluetoothService service in services) {
      var characteristics = service.characteristics;
      for (BluetoothCharacteristic c in characteristics) {
        log("$c");
        if (c.properties.read) {
          List<int> value = await c.read();
          log("$value");
        } else if (c.properties.notify) {
          await c.setNotifyValue(true);
          c.value.listen((value) {
            log("newValue: ${value[1]}");
          });
        }
      }
    }
  }

  @override
  Future<void> close() async {
    await sensorSubscription?.cancel();
    return super.close();
  }
}
