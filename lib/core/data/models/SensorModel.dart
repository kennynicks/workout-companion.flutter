import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:meta/meta.dart';

class SensorModel extends Sensor {
  SensorModel(
      {@required String name, @required String id, @required SensorType type})
      : super(id: id, name: name, type: type);

  static SensorType getSensorTypeFromSpecs() {
    return SensorType.Cadence;
  }
}
