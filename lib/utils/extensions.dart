import 'package:workout_companion_flutter/models/sensors/sensor.dart';

extension Comparable on List<Sensor> {
  bool equals(List<Sensor> sensors) {
    final Set<String> aIds = map((e) => e.id).toSet();
    final Set<String> bIds = sensors.map((e) => e.id).toSet();
    return aIds == bIds;
  }
}
