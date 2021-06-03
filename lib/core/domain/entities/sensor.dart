import 'package:equatable/equatable.dart';
import 'package:flutter_blue/flutter_blue.dart';
import "package:meta/meta.dart";

abstract class Sensor extends Equatable {
  final String name;
  final String id;
  final SensorType type;
  final BluetoothDevice bluetoothDevice;

  Sensor({
    @required this.name,
    @required this.id,
    @required this.type,
    @required this.bluetoothDevice,
  });

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.type,
        this.bluetoothDevice,
      ];
}

enum SensorType { Unknown, Cadence, HeartRate, FitnessMachine }
