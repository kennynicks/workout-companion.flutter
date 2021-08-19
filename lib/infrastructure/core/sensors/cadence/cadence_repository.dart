import 'dart:async';
import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/domain/core/sensors/cadence/constants.dart';
import 'package:workout_companion_flutter/domain/core/sensors/cadence/i_cadence_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';

class CadenceRepository implements ICadenceRepository {
  Function? onDisconnect;
  Function(int)? onRpm;
  StreamSubscription? stateSubscription;
  StreamSubscription? sensorSubscription;
  Sensor? sensor;

  CadenceRepository({this.onDisconnect, this.onRpm});

  @override
  Future startMonitoring(Sensor sensor) async {
    log("starting monitoring of candence-sensor");
    if (this.sensor != null) {
      log("Already monitoring sensor!");
      return;
    }
    this.sensor = sensor;
    stateSubscription = sensor.bluetoothDevice.state.listen((state) {
      if (state == BluetoothDeviceState.disconnected) {
        onDisconnect?.call();
        stopMonitoring();
      }
    });
    final BluetoothService service =
        (await sensor.bluetoothDevice.discoverServices()).firstWhere(
            (service) => cadenceSensorAdvertisementServices
                .contains(service.uuid.toString()));
    final BluetoothCharacteristic characteristic = service.characteristics
        .firstWhere((characteristic) => characteristic.uuid
            .toString()
            .startsWith(cadenceRpmCharacteristic));
    await characteristic.setNotifyValue(true);
    sensorSubscription = characteristic.value.listen((List<int> value) {
      log("value is $value");
      // if (value.length > 2) {
      //   onBpm?.call(value[1]);
      // }
    });
  }

  @override
  void stopMonitoring() {
    stateSubscription?.cancel();
    sensorSubscription?.cancel();
  }
}
