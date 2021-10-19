import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_companion_flutter/models/sensors/connection_state.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

part 'connection_event.freezed.dart';

@freezed
abstract class ConnectionEvent with _$ConnectionEvent {
  const factory ConnectionEvent({required ConnectionState state, required Sensor sensor}) = _ConnectionEvent;
}
