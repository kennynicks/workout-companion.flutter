// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'heartrate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HeartrateEventTearOff {
  const _$HeartrateEventTearOff();

  _SearchStarted searchStarted() {
    return const _SearchStarted();
  }

  _SearchStopped searchStopped() {
    return const _SearchStopped();
  }

  _InvokedDisconnect invokedDisconnect() {
    return const _InvokedDisconnect();
  }

  _InvokedPairing invokedPairing(Sensor heartrateSensor) {
    return _InvokedPairing(
      heartrateSensor,
    );
  }

  _ValueTransmitted valueTransmitted(Sensor heartrateSensor, int bpm) {
    return _ValueTransmitted(
      heartrateSensor,
      bpm,
    );
  }

  _SensorConnected sensorConnected(Sensor heartrateSensor) {
    return _SensorConnected(
      heartrateSensor,
    );
  }
}

/// @nodoc
const $HeartrateEvent = _$HeartrateEventTearOff();

/// @nodoc
mixin _$HeartrateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartrateEventCopyWith<$Res> {
  factory $HeartrateEventCopyWith(
          HeartrateEvent value, $Res Function(HeartrateEvent) then) =
      _$HeartrateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeartrateEventCopyWithImpl<$Res>
    implements $HeartrateEventCopyWith<$Res> {
  _$HeartrateEventCopyWithImpl(this._value, this._then);

  final HeartrateEvent _value;
  // ignore: unused_field
  final $Res Function(HeartrateEvent) _then;
}

/// @nodoc
abstract class _$SearchStartedCopyWith<$Res> {
  factory _$SearchStartedCopyWith(
          _SearchStarted value, $Res Function(_SearchStarted) then) =
      __$SearchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStartedCopyWithImpl<$Res>
    extends _$HeartrateEventCopyWithImpl<$Res>
    implements _$SearchStartedCopyWith<$Res> {
  __$SearchStartedCopyWithImpl(
      _SearchStarted _value, $Res Function(_SearchStarted) _then)
      : super(_value, (v) => _then(v as _SearchStarted));

  @override
  _SearchStarted get _value => super._value as _SearchStarted;
}

/// @nodoc

class _$_SearchStarted implements _SearchStarted {
  const _$_SearchStarted();

  @override
  String toString() {
    return 'HeartrateEvent.searchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) {
    return searchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) {
    return searchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(this);
    }
    return orElse();
  }
}

abstract class _SearchStarted implements HeartrateEvent {
  const factory _SearchStarted() = _$_SearchStarted;
}

/// @nodoc
abstract class _$SearchStoppedCopyWith<$Res> {
  factory _$SearchStoppedCopyWith(
          _SearchStopped value, $Res Function(_SearchStopped) then) =
      __$SearchStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStoppedCopyWithImpl<$Res>
    extends _$HeartrateEventCopyWithImpl<$Res>
    implements _$SearchStoppedCopyWith<$Res> {
  __$SearchStoppedCopyWithImpl(
      _SearchStopped _value, $Res Function(_SearchStopped) _then)
      : super(_value, (v) => _then(v as _SearchStopped));

  @override
  _SearchStopped get _value => super._value as _SearchStopped;
}

/// @nodoc

class _$_SearchStopped implements _SearchStopped {
  const _$_SearchStopped();

  @override
  String toString() {
    return 'HeartrateEvent.searchStopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) {
    return searchStopped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) {
    if (searchStopped != null) {
      return searchStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) {
    return searchStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) {
    if (searchStopped != null) {
      return searchStopped(this);
    }
    return orElse();
  }
}

abstract class _SearchStopped implements HeartrateEvent {
  const factory _SearchStopped() = _$_SearchStopped;
}

/// @nodoc
abstract class _$InvokedDisconnectCopyWith<$Res> {
  factory _$InvokedDisconnectCopyWith(
          _InvokedDisconnect value, $Res Function(_InvokedDisconnect) then) =
      __$InvokedDisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvokedDisconnectCopyWithImpl<$Res>
    extends _$HeartrateEventCopyWithImpl<$Res>
    implements _$InvokedDisconnectCopyWith<$Res> {
  __$InvokedDisconnectCopyWithImpl(
      _InvokedDisconnect _value, $Res Function(_InvokedDisconnect) _then)
      : super(_value, (v) => _then(v as _InvokedDisconnect));

  @override
  _InvokedDisconnect get _value => super._value as _InvokedDisconnect;
}

/// @nodoc

class _$_InvokedDisconnect implements _InvokedDisconnect {
  const _$_InvokedDisconnect();

  @override
  String toString() {
    return 'HeartrateEvent.invokedDisconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvokedDisconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) {
    return invokedDisconnect();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) {
    if (invokedDisconnect != null) {
      return invokedDisconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) {
    return invokedDisconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) {
    if (invokedDisconnect != null) {
      return invokedDisconnect(this);
    }
    return orElse();
  }
}

abstract class _InvokedDisconnect implements HeartrateEvent {
  const factory _InvokedDisconnect() = _$_InvokedDisconnect;
}

/// @nodoc
abstract class _$InvokedPairingCopyWith<$Res> {
  factory _$InvokedPairingCopyWith(
          _InvokedPairing value, $Res Function(_InvokedPairing) then) =
      __$InvokedPairingCopyWithImpl<$Res>;
  $Res call({Sensor heartrateSensor});

  $SensorCopyWith<$Res> get heartrateSensor;
}

/// @nodoc
class __$InvokedPairingCopyWithImpl<$Res>
    extends _$HeartrateEventCopyWithImpl<$Res>
    implements _$InvokedPairingCopyWith<$Res> {
  __$InvokedPairingCopyWithImpl(
      _InvokedPairing _value, $Res Function(_InvokedPairing) _then)
      : super(_value, (v) => _then(v as _InvokedPairing));

  @override
  _InvokedPairing get _value => super._value as _InvokedPairing;

  @override
  $Res call({
    Object? heartrateSensor = freezed,
  }) {
    return _then(_InvokedPairing(
      heartrateSensor == freezed
          ? _value.heartrateSensor
          : heartrateSensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }

  @override
  $SensorCopyWith<$Res> get heartrateSensor {
    return $SensorCopyWith<$Res>(_value.heartrateSensor, (value) {
      return _then(_value.copyWith(heartrateSensor: value));
    });
  }
}

/// @nodoc

class _$_InvokedPairing implements _InvokedPairing {
  const _$_InvokedPairing(this.heartrateSensor);

  @override
  final Sensor heartrateSensor;

  @override
  String toString() {
    return 'HeartrateEvent.invokedPairing(heartrateSensor: $heartrateSensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvokedPairing &&
            (identical(other.heartrateSensor, heartrateSensor) ||
                const DeepCollectionEquality()
                    .equals(other.heartrateSensor, heartrateSensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heartrateSensor);

  @JsonKey(ignore: true)
  @override
  _$InvokedPairingCopyWith<_InvokedPairing> get copyWith =>
      __$InvokedPairingCopyWithImpl<_InvokedPairing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) {
    return invokedPairing(heartrateSensor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) {
    if (invokedPairing != null) {
      return invokedPairing(heartrateSensor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) {
    return invokedPairing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) {
    if (invokedPairing != null) {
      return invokedPairing(this);
    }
    return orElse();
  }
}

abstract class _InvokedPairing implements HeartrateEvent {
  const factory _InvokedPairing(Sensor heartrateSensor) = _$_InvokedPairing;

  Sensor get heartrateSensor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvokedPairingCopyWith<_InvokedPairing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValueTransmittedCopyWith<$Res> {
  factory _$ValueTransmittedCopyWith(
          _ValueTransmitted value, $Res Function(_ValueTransmitted) then) =
      __$ValueTransmittedCopyWithImpl<$Res>;
  $Res call({Sensor heartrateSensor, int bpm});

  $SensorCopyWith<$Res> get heartrateSensor;
}

/// @nodoc
class __$ValueTransmittedCopyWithImpl<$Res>
    extends _$HeartrateEventCopyWithImpl<$Res>
    implements _$ValueTransmittedCopyWith<$Res> {
  __$ValueTransmittedCopyWithImpl(
      _ValueTransmitted _value, $Res Function(_ValueTransmitted) _then)
      : super(_value, (v) => _then(v as _ValueTransmitted));

  @override
  _ValueTransmitted get _value => super._value as _ValueTransmitted;

  @override
  $Res call({
    Object? heartrateSensor = freezed,
    Object? bpm = freezed,
  }) {
    return _then(_ValueTransmitted(
      heartrateSensor == freezed
          ? _value.heartrateSensor
          : heartrateSensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
      bpm == freezed
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $SensorCopyWith<$Res> get heartrateSensor {
    return $SensorCopyWith<$Res>(_value.heartrateSensor, (value) {
      return _then(_value.copyWith(heartrateSensor: value));
    });
  }
}

/// @nodoc

class _$_ValueTransmitted implements _ValueTransmitted {
  const _$_ValueTransmitted(this.heartrateSensor, this.bpm);

  @override
  final Sensor heartrateSensor;
  @override
  final int bpm;

  @override
  String toString() {
    return 'HeartrateEvent.valueTransmitted(heartrateSensor: $heartrateSensor, bpm: $bpm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueTransmitted &&
            (identical(other.heartrateSensor, heartrateSensor) ||
                const DeepCollectionEquality()
                    .equals(other.heartrateSensor, heartrateSensor)) &&
            (identical(other.bpm, bpm) ||
                const DeepCollectionEquality().equals(other.bpm, bpm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heartrateSensor) ^
      const DeepCollectionEquality().hash(bpm);

  @JsonKey(ignore: true)
  @override
  _$ValueTransmittedCopyWith<_ValueTransmitted> get copyWith =>
      __$ValueTransmittedCopyWithImpl<_ValueTransmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) {
    return valueTransmitted(heartrateSensor, bpm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) {
    if (valueTransmitted != null) {
      return valueTransmitted(heartrateSensor, bpm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) {
    return valueTransmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) {
    if (valueTransmitted != null) {
      return valueTransmitted(this);
    }
    return orElse();
  }
}

abstract class _ValueTransmitted implements HeartrateEvent {
  const factory _ValueTransmitted(Sensor heartrateSensor, int bpm) =
      _$_ValueTransmitted;

  Sensor get heartrateSensor => throw _privateConstructorUsedError;
  int get bpm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValueTransmittedCopyWith<_ValueTransmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SensorConnectedCopyWith<$Res> {
  factory _$SensorConnectedCopyWith(
          _SensorConnected value, $Res Function(_SensorConnected) then) =
      __$SensorConnectedCopyWithImpl<$Res>;
  $Res call({Sensor heartrateSensor});

  $SensorCopyWith<$Res> get heartrateSensor;
}

/// @nodoc
class __$SensorConnectedCopyWithImpl<$Res>
    extends _$HeartrateEventCopyWithImpl<$Res>
    implements _$SensorConnectedCopyWith<$Res> {
  __$SensorConnectedCopyWithImpl(
      _SensorConnected _value, $Res Function(_SensorConnected) _then)
      : super(_value, (v) => _then(v as _SensorConnected));

  @override
  _SensorConnected get _value => super._value as _SensorConnected;

  @override
  $Res call({
    Object? heartrateSensor = freezed,
  }) {
    return _then(_SensorConnected(
      heartrateSensor == freezed
          ? _value.heartrateSensor
          : heartrateSensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }

  @override
  $SensorCopyWith<$Res> get heartrateSensor {
    return $SensorCopyWith<$Res>(_value.heartrateSensor, (value) {
      return _then(_value.copyWith(heartrateSensor: value));
    });
  }
}

/// @nodoc

class _$_SensorConnected implements _SensorConnected {
  const _$_SensorConnected(this.heartrateSensor);

  @override
  final Sensor heartrateSensor;

  @override
  String toString() {
    return 'HeartrateEvent.sensorConnected(heartrateSensor: $heartrateSensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SensorConnected &&
            (identical(other.heartrateSensor, heartrateSensor) ||
                const DeepCollectionEquality()
                    .equals(other.heartrateSensor, heartrateSensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heartrateSensor);

  @JsonKey(ignore: true)
  @override
  _$SensorConnectedCopyWith<_SensorConnected> get copyWith =>
      __$SensorConnectedCopyWithImpl<_SensorConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor heartrateSensor) invokedPairing,
    required TResult Function(Sensor heartrateSensor, int bpm) valueTransmitted,
    required TResult Function(Sensor heartrateSensor) sensorConnected,
  }) {
    return sensorConnected(heartrateSensor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor heartrateSensor)? invokedPairing,
    TResult Function(Sensor heartrateSensor, int bpm)? valueTransmitted,
    TResult Function(Sensor heartrateSensor)? sensorConnected,
    required TResult orElse(),
  }) {
    if (sensorConnected != null) {
      return sensorConnected(heartrateSensor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
    required TResult Function(_SearchStopped value) searchStopped,
    required TResult Function(_InvokedDisconnect value) invokedDisconnect,
    required TResult Function(_InvokedPairing value) invokedPairing,
    required TResult Function(_ValueTransmitted value) valueTransmitted,
    required TResult Function(_SensorConnected value) sensorConnected,
  }) {
    return sensorConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    TResult Function(_SensorConnected value)? sensorConnected,
    required TResult orElse(),
  }) {
    if (sensorConnected != null) {
      return sensorConnected(this);
    }
    return orElse();
  }
}

abstract class _SensorConnected implements HeartrateEvent {
  const factory _SensorConnected(Sensor heartrateSensor) = _$_SensorConnected;

  Sensor get heartrateSensor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SensorConnectedCopyWith<_SensorConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HeartrateStateTearOff {
  const _$HeartrateStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Disconnected disconnected() {
    return const _Disconnected();
  }

  _Searching searching() {
    return const _Searching();
  }

  _Connected connected(Sensor heartrateSensor, int? bpm) {
    return _Connected(
      heartrateSensor,
      bpm,
    );
  }
}

/// @nodoc
const $HeartrateState = _$HeartrateStateTearOff();

/// @nodoc
mixin _$HeartrateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function(Sensor heartrateSensor, int? bpm) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(Sensor heartrateSensor, int? bpm)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Connected value) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Searching value)? searching,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartrateStateCopyWith<$Res> {
  factory $HeartrateStateCopyWith(
          HeartrateState value, $Res Function(HeartrateState) then) =
      _$HeartrateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeartrateStateCopyWithImpl<$Res>
    implements $HeartrateStateCopyWith<$Res> {
  _$HeartrateStateCopyWithImpl(this._value, this._then);

  final HeartrateState _value;
  // ignore: unused_field
  final $Res Function(HeartrateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HeartrateStateCopyWithImpl<$Res>
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
    return 'HeartrateState.initial()';
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
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function(Sensor heartrateSensor, int? bpm) connected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(Sensor heartrateSensor, int? bpm)? connected,
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
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Connected value) connected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Searching value)? searching,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HeartrateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DisconnectedCopyWith<$Res> {
  factory _$DisconnectedCopyWith(
          _Disconnected value, $Res Function(_Disconnected) then) =
      __$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisconnectedCopyWithImpl<$Res>
    extends _$HeartrateStateCopyWithImpl<$Res>
    implements _$DisconnectedCopyWith<$Res> {
  __$DisconnectedCopyWithImpl(
      _Disconnected _value, $Res Function(_Disconnected) _then)
      : super(_value, (v) => _then(v as _Disconnected));

  @override
  _Disconnected get _value => super._value as _Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'HeartrateState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function(Sensor heartrateSensor, int? bpm) connected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(Sensor heartrateSensor, int? bpm)? connected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Connected value) connected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Searching value)? searching,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements HeartrateState {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
abstract class _$SearchingCopyWith<$Res> {
  factory _$SearchingCopyWith(
          _Searching value, $Res Function(_Searching) then) =
      __$SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchingCopyWithImpl<$Res> extends _$HeartrateStateCopyWithImpl<$Res>
    implements _$SearchingCopyWith<$Res> {
  __$SearchingCopyWithImpl(_Searching _value, $Res Function(_Searching) _then)
      : super(_value, (v) => _then(v as _Searching));

  @override
  _Searching get _value => super._value as _Searching;
}

/// @nodoc

class _$_Searching implements _Searching {
  const _$_Searching();

  @override
  String toString() {
    return 'HeartrateState.searching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Searching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function(Sensor heartrateSensor, int? bpm) connected,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(Sensor heartrateSensor, int? bpm)? connected,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Connected value) connected,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Searching value)? searching,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements HeartrateState {
  const factory _Searching() = _$_Searching;
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
  $Res call({Sensor heartrateSensor, int? bpm});

  $SensorCopyWith<$Res> get heartrateSensor;
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res> extends _$HeartrateStateCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;

  @override
  $Res call({
    Object? heartrateSensor = freezed,
    Object? bpm = freezed,
  }) {
    return _then(_Connected(
      heartrateSensor == freezed
          ? _value.heartrateSensor
          : heartrateSensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
      bpm == freezed
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $SensorCopyWith<$Res> get heartrateSensor {
    return $SensorCopyWith<$Res>(_value.heartrateSensor, (value) {
      return _then(_value.copyWith(heartrateSensor: value));
    });
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.heartrateSensor, this.bpm);

  @override
  final Sensor heartrateSensor;
  @override
  final int? bpm;

  @override
  String toString() {
    return 'HeartrateState.connected(heartrateSensor: $heartrateSensor, bpm: $bpm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Connected &&
            (identical(other.heartrateSensor, heartrateSensor) ||
                const DeepCollectionEquality()
                    .equals(other.heartrateSensor, heartrateSensor)) &&
            (identical(other.bpm, bpm) ||
                const DeepCollectionEquality().equals(other.bpm, bpm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heartrateSensor) ^
      const DeepCollectionEquality().hash(bpm);

  @JsonKey(ignore: true)
  @override
  _$ConnectedCopyWith<_Connected> get copyWith =>
      __$ConnectedCopyWithImpl<_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function(Sensor heartrateSensor, int? bpm) connected,
  }) {
    return connected(heartrateSensor, bpm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(Sensor heartrateSensor, int? bpm)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(heartrateSensor, bpm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Connected value) connected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Searching value)? searching,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements HeartrateState {
  const factory _Connected(Sensor heartrateSensor, int? bpm) = _$_Connected;

  Sensor get heartrateSensor => throw _privateConstructorUsedError;
  int? get bpm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectedCopyWith<_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}
