import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluetooth_failure.freezed.dart';

@freezed
abstract class BluetoothFailure with _$BluetoothFailure {
  const factory BluetoothFailure.unavailable() = Unavailable;
  const factory BluetoothFailure.off() = Off;
}
