import 'package:equatable/equatable.dart';
import "package:meta/meta.dart";

abstract class Sensor extends Equatable {
  final String name;
  final String id;
  final SensorType type;

  Sensor({
    @required this.name,
    @required this.id,
    @required this.type,
  });

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.type,
      ];
}

enum SensorType { Unknown, Cadence, HeartRate, FitnessMachine }
