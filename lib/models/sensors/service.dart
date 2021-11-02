import 'dart:async';

import 'package:workout_companion_flutter/models/sensors/service_type.dart';

abstract class Service<T> {
  final String guid;
  final ServiceType type;
  Service({required this.guid, required this.type}) {
    valueStream = _streamController.stream.asBroadcastStream();
  }

  final StreamController<T> _streamController = StreamController<T>();
  late final Stream<T> valueStream;
}
