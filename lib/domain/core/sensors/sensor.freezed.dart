// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sensor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SensorTearOff {
  const _$SensorTearOff();

  _Sensor call(
      {required String name,
      required String id,
      required SensorType type,
      required BluetoothDevice bluetoothDevice}) {
    return _Sensor(
      name: name,
      id: id,
      type: type,
      bluetoothDevice: bluetoothDevice,
    );
  }
}

/// @nodoc
const $Sensor = _$SensorTearOff();

/// @nodoc
mixin _$Sensor {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  SensorType get type => throw _privateConstructorUsedError;
  BluetoothDevice get bluetoothDevice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SensorCopyWith<Sensor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorCopyWith<$Res> {
  factory $SensorCopyWith(Sensor value, $Res Function(Sensor) then) =
      _$SensorCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String id,
      SensorType type,
      BluetoothDevice bluetoothDevice});

  $SensorTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SensorCopyWithImpl<$Res> implements $SensorCopyWith<$Res> {
  _$SensorCopyWithImpl(this._value, this._then);

  final Sensor _value;
  // ignore: unused_field
  final $Res Function(Sensor) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? bluetoothDevice = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SensorType,
      bluetoothDevice: bluetoothDevice == freezed
          ? _value.bluetoothDevice
          : bluetoothDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice,
    ));
  }

  @override
  $SensorTypeCopyWith<$Res> get type {
    return $SensorTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$SensorCopyWith<$Res> implements $SensorCopyWith<$Res> {
  factory _$SensorCopyWith(_Sensor value, $Res Function(_Sensor) then) =
      __$SensorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String id,
      SensorType type,
      BluetoothDevice bluetoothDevice});

  @override
  $SensorTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$SensorCopyWithImpl<$Res> extends _$SensorCopyWithImpl<$Res>
    implements _$SensorCopyWith<$Res> {
  __$SensorCopyWithImpl(_Sensor _value, $Res Function(_Sensor) _then)
      : super(_value, (v) => _then(v as _Sensor));

  @override
  _Sensor get _value => super._value as _Sensor;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? bluetoothDevice = freezed,
  }) {
    return _then(_Sensor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SensorType,
      bluetoothDevice: bluetoothDevice == freezed
          ? _value.bluetoothDevice
          : bluetoothDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice,
    ));
  }
}

/// @nodoc

class _$_Sensor implements _Sensor {
  const _$_Sensor(
      {required this.name,
      required this.id,
      required this.type,
      required this.bluetoothDevice});

  @override
  final String name;
  @override
  final String id;
  @override
  final SensorType type;
  @override
  final BluetoothDevice bluetoothDevice;

  @override
  String toString() {
    return 'Sensor(name: $name, id: $id, type: $type, bluetoothDevice: $bluetoothDevice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sensor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.bluetoothDevice, bluetoothDevice) ||
                const DeepCollectionEquality()
                    .equals(other.bluetoothDevice, bluetoothDevice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(bluetoothDevice);

  @JsonKey(ignore: true)
  @override
  _$SensorCopyWith<_Sensor> get copyWith =>
      __$SensorCopyWithImpl<_Sensor>(this, _$identity);
}

abstract class _Sensor implements Sensor {
  const factory _Sensor(
      {required String name,
      required String id,
      required SensorType type,
      required BluetoothDevice bluetoothDevice}) = _$_Sensor;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  SensorType get type => throw _privateConstructorUsedError;
  @override
  BluetoothDevice get bluetoothDevice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SensorCopyWith<_Sensor> get copyWith => throw _privateConstructorUsedError;
}
