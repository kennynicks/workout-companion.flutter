import 'package:workout_companion_flutter/core/domain/entities/sensor.dart';
import 'package:meta/meta.dart';

class SensorModel extends Sensor {
  SensorModel(
      {@required String name,
      @required String macAddress,
      @required SensorType type})
      : super(macAddress: macAddress, name: name, type: type);
}
