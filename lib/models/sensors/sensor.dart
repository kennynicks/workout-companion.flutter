import 'dart:async';

import 'package:flutter_blue/flutter_blue.dart';

class Sensor {
  Sensor({required this.name, required this.id, required this.btDevice});
  String name;
  String id;
  List<Service> services = List.empty();
  BluetoothDevice btDevice;

  final StreamController<ConnectionEvent> _stateStreamController =
      StreamController<ConnectionEvent>();
  Stream<ConnectionEvent>? _stateStream;

  Stream<ConnectionEvent> get stateStream {
    _stateStream ??= _stateStreamController.stream.asBroadcastStream();
    return _stateStream!;
  }
}

class ConnectionEvent {
  ConnectionState state;
  Sensor sensor;
  ConnectionEvent({required this.state, required this.sensor});
}

enum ConnectionState { connected, disconnected }

enum ServiceTypes { heartrate }

abstract class Service<T> {
  String guid;
  ServiceTypes type;
  Service({required this.guid, required this.type});

  final StreamController<T> _streamController = StreamController<T>();
  Stream<T>? _valueStream;

  Stream<T> get valueStream {
    _valueStream ??= _streamController.stream.asBroadcastStream();
    return _valueStream!;
  }
}
