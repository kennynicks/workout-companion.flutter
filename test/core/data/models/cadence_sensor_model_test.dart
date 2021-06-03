import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:flutter_blue/gen/flutterblue.pb.dart' as proto;

void main() {
  final tSensorModel = CadenceSensorModel(
    name: "name",
    id: "id",
    bluetoothDevice: BluetoothDevice.fromProto(
      proto.BluetoothDevice(),
    ),
  );

  test('should be a subclass of SensorModel', () {
    // assert
    expect(tSensorModel, isA<SensorModel>());
  });
}
