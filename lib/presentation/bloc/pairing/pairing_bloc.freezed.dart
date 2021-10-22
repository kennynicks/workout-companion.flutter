// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pairing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PairingEventTearOff {
  const _$PairingEventTearOff();

  _PairingStarted pairingStarted() {
    return const _PairingStarted();
  }

  _AvailableSensorChanged availableSensorChanged() {
    return const _AvailableSensorChanged();
  }

  _ConnectedSensorChanged connectedSensorChanged() {
    return const _ConnectedSensorChanged();
  }

  _ConnectSensor connectSensor({required Sensor sensor}) {
    return _ConnectSensor(
      sensor: sensor,
    );
  }

  _DisconnectSensor disconnectSensor({required Sensor sensor}) {
    return _DisconnectSensor(
      sensor: sensor,
    );
  }
}

/// @nodoc
const $PairingEvent = _$PairingEventTearOff();

/// @nodoc
mixin _$PairingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() availableSensorChanged,
    required TResult Function() connectedSensorChanged,
    required TResult Function(Sensor sensor) connectSensor,
    required TResult Function(Sensor sensor) disconnectSensor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableSensorChanged value)
        availableSensorChanged,
    required TResult Function(_ConnectedSensorChanged value)
        connectedSensorChanged,
    required TResult Function(_ConnectSensor value) connectSensor,
    required TResult Function(_DisconnectSensor value) disconnectSensor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairingEventCopyWith<$Res> {
  factory $PairingEventCopyWith(
          PairingEvent value, $Res Function(PairingEvent) then) =
      _$PairingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PairingEventCopyWithImpl<$Res> implements $PairingEventCopyWith<$Res> {
  _$PairingEventCopyWithImpl(this._value, this._then);

  final PairingEvent _value;
  // ignore: unused_field
  final $Res Function(PairingEvent) _then;
}

/// @nodoc
abstract class _$PairingStartedCopyWith<$Res> {
  factory _$PairingStartedCopyWith(
          _PairingStarted value, $Res Function(_PairingStarted) then) =
      __$PairingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PairingStartedCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$PairingStartedCopyWith<$Res> {
  __$PairingStartedCopyWithImpl(
      _PairingStarted _value, $Res Function(_PairingStarted) _then)
      : super(_value, (v) => _then(v as _PairingStarted));

  @override
  _PairingStarted get _value => super._value as _PairingStarted;
}

/// @nodoc

class _$_PairingStarted implements _PairingStarted {
  const _$_PairingStarted();

  @override
  String toString() {
    return 'PairingEvent.pairingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PairingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() availableSensorChanged,
    required TResult Function() connectedSensorChanged,
    required TResult Function(Sensor sensor) connectSensor,
    required TResult Function(Sensor sensor) disconnectSensor,
  }) {
    return pairingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
  }) {
    return pairingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (pairingStarted != null) {
      return pairingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableSensorChanged value)
        availableSensorChanged,
    required TResult Function(_ConnectedSensorChanged value)
        connectedSensorChanged,
    required TResult Function(_ConnectSensor value) connectSensor,
    required TResult Function(_DisconnectSensor value) disconnectSensor,
  }) {
    return pairingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
  }) {
    return pairingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (pairingStarted != null) {
      return pairingStarted(this);
    }
    return orElse();
  }
}

abstract class _PairingStarted implements PairingEvent {
  const factory _PairingStarted() = _$_PairingStarted;
}

/// @nodoc
abstract class _$AvailableSensorChangedCopyWith<$Res> {
  factory _$AvailableSensorChangedCopyWith(_AvailableSensorChanged value,
          $Res Function(_AvailableSensorChanged) then) =
      __$AvailableSensorChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AvailableSensorChangedCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$AvailableSensorChangedCopyWith<$Res> {
  __$AvailableSensorChangedCopyWithImpl(_AvailableSensorChanged _value,
      $Res Function(_AvailableSensorChanged) _then)
      : super(_value, (v) => _then(v as _AvailableSensorChanged));

  @override
  _AvailableSensorChanged get _value => super._value as _AvailableSensorChanged;
}

/// @nodoc

class _$_AvailableSensorChanged implements _AvailableSensorChanged {
  const _$_AvailableSensorChanged();

  @override
  String toString() {
    return 'PairingEvent.availableSensorChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AvailableSensorChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() availableSensorChanged,
    required TResult Function() connectedSensorChanged,
    required TResult Function(Sensor sensor) connectSensor,
    required TResult Function(Sensor sensor) disconnectSensor,
  }) {
    return availableSensorChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
  }) {
    return availableSensorChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (availableSensorChanged != null) {
      return availableSensorChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableSensorChanged value)
        availableSensorChanged,
    required TResult Function(_ConnectedSensorChanged value)
        connectedSensorChanged,
    required TResult Function(_ConnectSensor value) connectSensor,
    required TResult Function(_DisconnectSensor value) disconnectSensor,
  }) {
    return availableSensorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
  }) {
    return availableSensorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (availableSensorChanged != null) {
      return availableSensorChanged(this);
    }
    return orElse();
  }
}

abstract class _AvailableSensorChanged implements PairingEvent {
  const factory _AvailableSensorChanged() = _$_AvailableSensorChanged;
}

/// @nodoc
abstract class _$ConnectedSensorChangedCopyWith<$Res> {
  factory _$ConnectedSensorChangedCopyWith(_ConnectedSensorChanged value,
          $Res Function(_ConnectedSensorChanged) then) =
      __$ConnectedSensorChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectedSensorChangedCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$ConnectedSensorChangedCopyWith<$Res> {
  __$ConnectedSensorChangedCopyWithImpl(_ConnectedSensorChanged _value,
      $Res Function(_ConnectedSensorChanged) _then)
      : super(_value, (v) => _then(v as _ConnectedSensorChanged));

  @override
  _ConnectedSensorChanged get _value => super._value as _ConnectedSensorChanged;
}

/// @nodoc

class _$_ConnectedSensorChanged implements _ConnectedSensorChanged {
  const _$_ConnectedSensorChanged();

  @override
  String toString() {
    return 'PairingEvent.connectedSensorChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ConnectedSensorChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() availableSensorChanged,
    required TResult Function() connectedSensorChanged,
    required TResult Function(Sensor sensor) connectSensor,
    required TResult Function(Sensor sensor) disconnectSensor,
  }) {
    return connectedSensorChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
  }) {
    return connectedSensorChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (connectedSensorChanged != null) {
      return connectedSensorChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableSensorChanged value)
        availableSensorChanged,
    required TResult Function(_ConnectedSensorChanged value)
        connectedSensorChanged,
    required TResult Function(_ConnectSensor value) connectSensor,
    required TResult Function(_DisconnectSensor value) disconnectSensor,
  }) {
    return connectedSensorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
  }) {
    return connectedSensorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (connectedSensorChanged != null) {
      return connectedSensorChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectedSensorChanged implements PairingEvent {
  const factory _ConnectedSensorChanged() = _$_ConnectedSensorChanged;
}

/// @nodoc
abstract class _$ConnectSensorCopyWith<$Res> {
  factory _$ConnectSensorCopyWith(
          _ConnectSensor value, $Res Function(_ConnectSensor) then) =
      __$ConnectSensorCopyWithImpl<$Res>;
  $Res call({Sensor sensor});
}

/// @nodoc
class __$ConnectSensorCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$ConnectSensorCopyWith<$Res> {
  __$ConnectSensorCopyWithImpl(
      _ConnectSensor _value, $Res Function(_ConnectSensor) _then)
      : super(_value, (v) => _then(v as _ConnectSensor));

  @override
  _ConnectSensor get _value => super._value as _ConnectSensor;

  @override
  $Res call({
    Object? sensor = freezed,
  }) {
    return _then(_ConnectSensor(
      sensor: sensor == freezed
          ? _value.sensor
          : sensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }
}

/// @nodoc

class _$_ConnectSensor implements _ConnectSensor {
  const _$_ConnectSensor({required this.sensor});

  @override
  final Sensor sensor;

  @override
  String toString() {
    return 'PairingEvent.connectSensor(sensor: $sensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectSensor &&
            (identical(other.sensor, sensor) ||
                const DeepCollectionEquality().equals(other.sensor, sensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sensor);

  @JsonKey(ignore: true)
  @override
  _$ConnectSensorCopyWith<_ConnectSensor> get copyWith =>
      __$ConnectSensorCopyWithImpl<_ConnectSensor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() availableSensorChanged,
    required TResult Function() connectedSensorChanged,
    required TResult Function(Sensor sensor) connectSensor,
    required TResult Function(Sensor sensor) disconnectSensor,
  }) {
    return connectSensor(sensor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
  }) {
    return connectSensor?.call(sensor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (connectSensor != null) {
      return connectSensor(sensor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableSensorChanged value)
        availableSensorChanged,
    required TResult Function(_ConnectedSensorChanged value)
        connectedSensorChanged,
    required TResult Function(_ConnectSensor value) connectSensor,
    required TResult Function(_DisconnectSensor value) disconnectSensor,
  }) {
    return connectSensor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
  }) {
    return connectSensor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (connectSensor != null) {
      return connectSensor(this);
    }
    return orElse();
  }
}

abstract class _ConnectSensor implements PairingEvent {
  const factory _ConnectSensor({required Sensor sensor}) = _$_ConnectSensor;

  Sensor get sensor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectSensorCopyWith<_ConnectSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DisconnectSensorCopyWith<$Res> {
  factory _$DisconnectSensorCopyWith(
          _DisconnectSensor value, $Res Function(_DisconnectSensor) then) =
      __$DisconnectSensorCopyWithImpl<$Res>;
  $Res call({Sensor sensor});
}

/// @nodoc
class __$DisconnectSensorCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$DisconnectSensorCopyWith<$Res> {
  __$DisconnectSensorCopyWithImpl(
      _DisconnectSensor _value, $Res Function(_DisconnectSensor) _then)
      : super(_value, (v) => _then(v as _DisconnectSensor));

  @override
  _DisconnectSensor get _value => super._value as _DisconnectSensor;

  @override
  $Res call({
    Object? sensor = freezed,
  }) {
    return _then(_DisconnectSensor(
      sensor: sensor == freezed
          ? _value.sensor
          : sensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }
}

/// @nodoc

class _$_DisconnectSensor implements _DisconnectSensor {
  const _$_DisconnectSensor({required this.sensor});

  @override
  final Sensor sensor;

  @override
  String toString() {
    return 'PairingEvent.disconnectSensor(sensor: $sensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DisconnectSensor &&
            (identical(other.sensor, sensor) ||
                const DeepCollectionEquality().equals(other.sensor, sensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sensor);

  @JsonKey(ignore: true)
  @override
  _$DisconnectSensorCopyWith<_DisconnectSensor> get copyWith =>
      __$DisconnectSensorCopyWithImpl<_DisconnectSensor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() availableSensorChanged,
    required TResult Function() connectedSensorChanged,
    required TResult Function(Sensor sensor) connectSensor,
    required TResult Function(Sensor sensor) disconnectSensor,
  }) {
    return disconnectSensor(sensor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
  }) {
    return disconnectSensor?.call(sensor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? availableSensorChanged,
    TResult Function()? connectedSensorChanged,
    TResult Function(Sensor sensor)? connectSensor,
    TResult Function(Sensor sensor)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (disconnectSensor != null) {
      return disconnectSensor(sensor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableSensorChanged value)
        availableSensorChanged,
    required TResult Function(_ConnectedSensorChanged value)
        connectedSensorChanged,
    required TResult Function(_ConnectSensor value) connectSensor,
    required TResult Function(_DisconnectSensor value) disconnectSensor,
  }) {
    return disconnectSensor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
  }) {
    return disconnectSensor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableSensorChanged value)? availableSensorChanged,
    TResult Function(_ConnectedSensorChanged value)? connectedSensorChanged,
    TResult Function(_ConnectSensor value)? connectSensor,
    TResult Function(_DisconnectSensor value)? disconnectSensor,
    required TResult orElse(),
  }) {
    if (disconnectSensor != null) {
      return disconnectSensor(this);
    }
    return orElse();
  }
}

abstract class _DisconnectSensor implements PairingEvent {
  const factory _DisconnectSensor({required Sensor sensor}) =
      _$_DisconnectSensor;

  Sensor get sensor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DisconnectSensorCopyWith<_DisconnectSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PairingStateTearOff {
  const _$PairingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Pairing pairing(
      {required List<Sensor> connectedSensors,
      required List<Sensor> availableSensors}) {
    return _Pairing(
      connectedSensors: connectedSensors,
      availableSensors: availableSensors,
    );
  }

  _Paired paired() {
    return const _Paired();
  }
}

/// @nodoc
const $PairingState = _$PairingStateTearOff();

/// @nodoc
mixin _$PairingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)
        pairing,
    required TResult Function() paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pairing value) pairing,
    required TResult Function(_Paired value) paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairingStateCopyWith<$Res> {
  factory $PairingStateCopyWith(
          PairingState value, $Res Function(PairingState) then) =
      _$PairingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PairingStateCopyWithImpl<$Res> implements $PairingStateCopyWith<$Res> {
  _$PairingStateCopyWithImpl(this._value, this._then);

  final PairingState _value;
  // ignore: unused_field
  final $Res Function(PairingState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PairingStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PairingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)
        pairing,
    required TResult Function() paired,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pairing value) pairing,
    required TResult Function(_Paired value) paired,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PairingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$PairingCopyWith<$Res> {
  factory _$PairingCopyWith(_Pairing value, $Res Function(_Pairing) then) =
      __$PairingCopyWithImpl<$Res>;
  $Res call({List<Sensor> connectedSensors, List<Sensor> availableSensors});
}

/// @nodoc
class __$PairingCopyWithImpl<$Res> extends _$PairingStateCopyWithImpl<$Res>
    implements _$PairingCopyWith<$Res> {
  __$PairingCopyWithImpl(_Pairing _value, $Res Function(_Pairing) _then)
      : super(_value, (v) => _then(v as _Pairing));

  @override
  _Pairing get _value => super._value as _Pairing;

  @override
  $Res call({
    Object? connectedSensors = freezed,
    Object? availableSensors = freezed,
  }) {
    return _then(_Pairing(
      connectedSensors: connectedSensors == freezed
          ? _value.connectedSensors
          : connectedSensors // ignore: cast_nullable_to_non_nullable
              as List<Sensor>,
      availableSensors: availableSensors == freezed
          ? _value.availableSensors
          : availableSensors // ignore: cast_nullable_to_non_nullable
              as List<Sensor>,
    ));
  }
}

/// @nodoc

class _$_Pairing implements _Pairing {
  const _$_Pairing(
      {required this.connectedSensors, required this.availableSensors});

  @override
  final List<Sensor> connectedSensors;
  @override
  final List<Sensor> availableSensors;

  @override
  String toString() {
    return 'PairingState.pairing(connectedSensors: $connectedSensors, availableSensors: $availableSensors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pairing &&
            (identical(other.connectedSensors, connectedSensors) ||
                const DeepCollectionEquality()
                    .equals(other.connectedSensors, connectedSensors)) &&
            (identical(other.availableSensors, availableSensors) ||
                const DeepCollectionEquality()
                    .equals(other.availableSensors, availableSensors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectedSensors) ^
      const DeepCollectionEquality().hash(availableSensors);

  @JsonKey(ignore: true)
  @override
  _$PairingCopyWith<_Pairing> get copyWith =>
      __$PairingCopyWithImpl<_Pairing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)
        pairing,
    required TResult Function() paired,
  }) {
    return pairing(connectedSensors, availableSensors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
  }) {
    return pairing?.call(connectedSensors, availableSensors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
    required TResult orElse(),
  }) {
    if (pairing != null) {
      return pairing(connectedSensors, availableSensors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pairing value) pairing,
    required TResult Function(_Paired value) paired,
  }) {
    return pairing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
  }) {
    return pairing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
    required TResult orElse(),
  }) {
    if (pairing != null) {
      return pairing(this);
    }
    return orElse();
  }
}

abstract class _Pairing implements PairingState {
  const factory _Pairing(
      {required List<Sensor> connectedSensors,
      required List<Sensor> availableSensors}) = _$_Pairing;

  List<Sensor> get connectedSensors => throw _privateConstructorUsedError;
  List<Sensor> get availableSensors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PairingCopyWith<_Pairing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PairedCopyWith<$Res> {
  factory _$PairedCopyWith(_Paired value, $Res Function(_Paired) then) =
      __$PairedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PairedCopyWithImpl<$Res> extends _$PairingStateCopyWithImpl<$Res>
    implements _$PairedCopyWith<$Res> {
  __$PairedCopyWithImpl(_Paired _value, $Res Function(_Paired) _then)
      : super(_value, (v) => _then(v as _Paired));

  @override
  _Paired get _value => super._value as _Paired;
}

/// @nodoc

class _$_Paired implements _Paired {
  const _$_Paired();

  @override
  String toString() {
    return 'PairingState.paired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Paired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)
        pairing,
    required TResult Function() paired,
  }) {
    return paired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
  }) {
    return paired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Sensor> connectedSensors, List<Sensor> availableSensors)?
        pairing,
    TResult Function()? paired,
    required TResult orElse(),
  }) {
    if (paired != null) {
      return paired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pairing value) pairing,
    required TResult Function(_Paired value) paired,
  }) {
    return paired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
  }) {
    return paired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pairing value)? pairing,
    TResult Function(_Paired value)? paired,
    required TResult orElse(),
  }) {
    if (paired != null) {
      return paired(this);
    }
    return orElse();
  }
}

abstract class _Paired implements PairingState {
  const factory _Paired() = _$_Paired;
}
