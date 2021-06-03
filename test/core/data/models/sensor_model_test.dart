import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_companion_flutter/core/constants/service_uuids.dart';
import 'package:workout_companion_flutter/core/data/models/cadence_sensor_model.dart';
import 'package:workout_companion_flutter/core/data/models/error/exceptions.dart';
import 'package:workout_companion_flutter/core/data/models/sensor_model.dart';
import 'package:flutter_blue/gen/flutterblue.pb.dart' as proto;

void main() {
  group("fromScanResult", () {
    final tName = "name";
    final tId = "id";
    final tProtoDevice = proto.BluetoothDevice(
      name: "name",
      remoteId: "id",
    );
    final tBleDevice = BluetoothDevice.fromProto(
      tProtoDevice,
    );

    test('should return a valid SensorModel for a ScanResult', () async {
      // arrange
      final tSensorModel = CadenceSensorModel(
        name: tName,
        id: tId,
        bluetoothDevice: tBleDevice,
      );

      final tScanResult = ScanResult.fromProto(
        proto.ScanResult(
          device: tProtoDevice,
          advertisementData: proto.AdvertisementData(
            serviceUuids: CADENCE_SENSOR_ADVERTISEMENT_SERVICES,
          ),
        ),
      );
      // act
      final result = SensorModel.fromScanResult(tScanResult);
      // assert
      expect(result, tSensorModel);
    });

    test(
        'should throw an UnknownSensorTypeException when Service-UUIDS are unknown',
        () async {
      // arrange
      final tScanResult = ScanResult.fromProto(
        proto.ScanResult(
          device: tProtoDevice,
          advertisementData: proto.AdvertisementData(
            serviceUuids: ["UNKNOWN_UUID"],
          ),
        ),
      );
      // act

      // assert
      try {
        SensorModel.fromScanResult(tScanResult);
        fail("Exception not thrown");
      } catch (e) {
        expect(e, isA<UnknownSensorTypeException>());
      }
    });
  });
}
