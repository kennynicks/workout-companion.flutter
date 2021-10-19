// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionEventTearOff {
  const _$ConnectionEventTearOff();

  _ConnectionEvent call(
      {required ConnectionState state, required Sensor sensor}) {
    return _ConnectionEvent(
      state: state,
      sensor: sensor,
    );
  }
}

/// @nodoc
const $ConnectionEvent = _$ConnectionEventTearOff();

/// @nodoc
mixin _$ConnectionEvent {
  ConnectionState get state => throw _privateConstructorUsedError;
  Sensor get sensor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionEventCopyWith<ConnectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionEventCopyWith<$Res> {
  factory $ConnectionEventCopyWith(
          ConnectionEvent value, $Res Function(ConnectionEvent) then) =
      _$ConnectionEventCopyWithImpl<$Res>;
  $Res call({ConnectionState state, Sensor sensor});

  $ConnectionStateCopyWith<$Res> get state;
}

/// @nodoc
class _$ConnectionEventCopyWithImpl<$Res>
    implements $ConnectionEventCopyWith<$Res> {
  _$ConnectionEventCopyWithImpl(this._value, this._then);

  final ConnectionEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectionEvent) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? sensor = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ConnectionState,
      sensor: sensor == freezed
          ? _value.sensor
          : sensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }

  @override
  $ConnectionStateCopyWith<$Res> get state {
    return $ConnectionStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$ConnectionEventCopyWith<$Res>
    implements $ConnectionEventCopyWith<$Res> {
  factory _$ConnectionEventCopyWith(
          _ConnectionEvent value, $Res Function(_ConnectionEvent) then) =
      __$ConnectionEventCopyWithImpl<$Res>;
  @override
  $Res call({ConnectionState state, Sensor sensor});

  @override
  $ConnectionStateCopyWith<$Res> get state;
}

/// @nodoc
class __$ConnectionEventCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res>
    implements _$ConnectionEventCopyWith<$Res> {
  __$ConnectionEventCopyWithImpl(
      _ConnectionEvent _value, $Res Function(_ConnectionEvent) _then)
      : super(_value, (v) => _then(v as _ConnectionEvent));

  @override
  _ConnectionEvent get _value => super._value as _ConnectionEvent;

  @override
  $Res call({
    Object? state = freezed,
    Object? sensor = freezed,
  }) {
    return _then(_ConnectionEvent(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ConnectionState,
      sensor: sensor == freezed
          ? _value.sensor
          : sensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }
}

/// @nodoc

class _$_ConnectionEvent implements _ConnectionEvent {
  const _$_ConnectionEvent({required this.state, required this.sensor});

  @override
  final ConnectionState state;
  @override
  final Sensor sensor;

  @override
  String toString() {
    return 'ConnectionEvent(state: $state, sensor: $sensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectionEvent &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.sensor, sensor) ||
                const DeepCollectionEquality().equals(other.sensor, sensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(sensor);

  @JsonKey(ignore: true)
  @override
  _$ConnectionEventCopyWith<_ConnectionEvent> get copyWith =>
      __$ConnectionEventCopyWithImpl<_ConnectionEvent>(this, _$identity);
}

abstract class _ConnectionEvent implements ConnectionEvent {
  const factory _ConnectionEvent(
      {required ConnectionState state,
      required Sensor sensor}) = _$_ConnectionEvent;

  @override
  ConnectionState get state => throw _privateConstructorUsedError;
  @override
  Sensor get sensor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConnectionEventCopyWith<_ConnectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
