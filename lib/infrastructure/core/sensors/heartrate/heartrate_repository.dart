import 'dart:async';
import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/domain/core/sensors/heartrate/constants.dart';
import 'package:workout_companion_flutter/domain/core/sensors/heartrate/i_heartrate_repository.dart';
import 'package:workout_companion_flutter/domain/core/sensors/sensor.dart';

class HeartrateRepository implements IHeartrateRepository {
  Function? onDisconnect;
  Function(int)? onBpm;
  StreamSubscription? stateSubscription;
  StreamSubscription? sensorSubscription;
  Sensor? sensor;

  HeartrateRepository({this.onDisconnect, this.onBpm});

  @override
  Future startMonitoring(Sensor sensor) async {
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
            (service) => heartrateSensorAdvertisementServices
                .contains(service.uuid.toString()));
    final BluetoothCharacteristic characteristic = service.characteristics
        .firstWhere((characteristic) =>
            characteristic.uuid.toString() == heartrateBpmCharacteristic);
    await characteristic.setNotifyValue(true);
    sensorSubscription = characteristic.value.listen((List<int> value) {
      if (value.length > 2) {
        onBpm?.call(value[1]);
      }
    });
  }

  @override
  void stopMonitoring() {
    stateSubscription?.cancel();
    sensorSubscription?.cancel();
  }
}
