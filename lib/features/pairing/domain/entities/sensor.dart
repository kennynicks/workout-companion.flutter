import 'package:equatable/equatable.dart';
import "package:meta/meta.dart";

class Sensor extends Equatable {
  final String name;
  final String macAddress;
  final SensorType type;

  Sensor({@required this.name, @required this.macAddress, @required this.type});

  @override
  List<Object> get props => [this.macAddress, this.name, this.type];
}

enum SensorType { Cadence, HeartRate, Trainer }
