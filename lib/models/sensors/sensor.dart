import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/models/sensors/connection_event.dart';
import 'package:workout_companion_flutter/models/sensors/service_type.dart';

class Sensor {
  Sensor({required this.name, required this.id, required this.btDevice, required this.serviceTypes}) {
    stateStream = _stateStreamController.stream.asBroadcastStream();
  }
  final String name;
  final String id;
  final List<ServiceType> serviceTypes;
  final BluetoothDevice btDevice;

  final StreamController<ConnectionEvent> _stateStreamController = StreamController<ConnectionEvent>();
  late final Stream<ConnectionEvent> stateStream;

  factory Sensor.fromScanResult(ScanResult scanResult) {
    final String name = scanResult.device.name;
    final String id = scanResult.device.id.id;
    final List<ServiceType> serviceTypes = scanResult.advertisementData.serviceUuids.map((guid) => ServiceType.fromGuid(guid)).toList();
    return Sensor(name: name, id: id, serviceTypes: serviceTypes, btDevice: scanResult.device);
  }

  @override
  bool operator ==(Object o) => o is Sensor && o.hashCode == hashCode;

  @override
  int get hashCode => hashValues(id, name);
}
