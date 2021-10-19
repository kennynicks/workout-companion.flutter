import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/models/sensors/base/service.dart';
import 'package:workout_companion_flutter/models/sensors/connection_event.dart';

class Sensor {
  Sensor({required this.name, required this.id, required this.btDevice}) {
    stateStream = _stateStreamController.stream.asBroadcastStream();
  }
  final String name;
  final String id;
  final List<Service> services = List.empty();
  final BluetoothDevice btDevice;

  final StreamController<ConnectionEvent> _stateStreamController = StreamController<ConnectionEvent>();
  late final Stream<ConnectionEvent> stateStream;

  @override
  bool operator ==(Object o) => o is Sensor && o.hashCode == hashCode;

  @override
  int get hashCode => hashValues(id, name);
}
