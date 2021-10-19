import 'dart:async';

import 'package:workout_companion_flutter/models/sensors/service_type.dart';

abstract class Service<T> {
  final String guid;
  final ServiceType type;
  Service({required this.guid, required this.type});

  final StreamController<T> _streamController = StreamController<T>();
  Stream<T>? _valueStream;

  Stream<T> get valueStream {
    _valueStream ??= _streamController.stream.asBroadcastStream();
    return _valueStream!;
  }
}
