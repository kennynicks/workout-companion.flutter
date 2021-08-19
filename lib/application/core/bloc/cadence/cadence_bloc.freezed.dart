// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cadence_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CadenceEventTearOff {
  const _$CadenceEventTearOff();

  _SearchStarted searchStarted() {
    return const _SearchStarted();
  }

  _SearchStopped searchStopped() {
    return const _SearchStopped();
  }

  _InvokedDisconnect invokedDisconnect() {
    return const _InvokedDisconnect();
  }

  _InvokedPairing invokedPairing(Sensor cadenceSensor) {
    return _InvokedPairing(
      cadenceSensor,
    );
  }

  _ValueTransmitted valueTransmitted(
      CadenceRepository cadenceRepository, int rpm) {
    return _ValueTransmitted(
      cadenceRepository,
      rpm,
    );
  }

  _SensorConnected sensorConnected(Sensor cadenceSensor) {
    return _SensorConnected(
      cadenceSensor,
    );
  }

  _SensorDisconnected sensorDisconnected() {
    return const _SensorDisconnected();
  }
}

/// @nodoc
const $CadenceEvent = _$CadenceEventTearOff();

/// @nodoc
mixin _$CadenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CadenceEventCopyWith<$Res> {
  factory $CadenceEventCopyWith(
          CadenceEvent value, $Res Function(CadenceEvent) then) =
      _$CadenceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CadenceEventCopyWithImpl<$Res> implements $CadenceEventCopyWith<$Res> {
  _$CadenceEventCopyWithImpl(this._value, this._then);

  final CadenceEvent _value;
  // ignore: unused_field
  final $Res Function(CadenceEvent) _then;
}

/// @nodoc
abstract class _$SearchStartedCopyWith<$Res> {
  factory _$SearchStartedCopyWith(
          _SearchStarted value, $Res Function(_SearchStarted) then) =
      __$SearchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStartedCopyWithImpl<$Res>
    extends _$CadenceEventCopyWithImpl<$Res>
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
    return 'CadenceEvent.searchStarted()';
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
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return searchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(this);
    }
    return orElse();
  }
}

abstract class _SearchStarted implements CadenceEvent {
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
    extends _$CadenceEventCopyWithImpl<$Res>
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
    return 'CadenceEvent.searchStopped()';
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
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return searchStopped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (searchStopped != null) {
      return searchStopped(this);
    }
    return orElse();
  }
}

abstract class _SearchStopped implements CadenceEvent {
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
    extends _$CadenceEventCopyWithImpl<$Res>
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
    return 'CadenceEvent.invokedDisconnect()';
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
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return invokedDisconnect();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (invokedDisconnect != null) {
      return invokedDisconnect(this);
    }
    return orElse();
  }
}

abstract class _InvokedDisconnect implements CadenceEvent {
  const factory _InvokedDisconnect() = _$_InvokedDisconnect;
}

/// @nodoc
abstract class _$InvokedPairingCopyWith<$Res> {
  factory _$InvokedPairingCopyWith(
          _InvokedPairing value, $Res Function(_InvokedPairing) then) =
      __$InvokedPairingCopyWithImpl<$Res>;
  $Res call({Sensor cadenceSensor});

  $SensorCopyWith<$Res> get cadenceSensor;
}

/// @nodoc
class __$InvokedPairingCopyWithImpl<$Res>
    extends _$CadenceEventCopyWithImpl<$Res>
    implements _$InvokedPairingCopyWith<$Res> {
  __$InvokedPairingCopyWithImpl(
      _InvokedPairing _value, $Res Function(_InvokedPairing) _then)
      : super(_value, (v) => _then(v as _InvokedPairing));

  @override
  _InvokedPairing get _value => super._value as _InvokedPairing;

  @override
  $Res call({
    Object? cadenceSensor = freezed,
  }) {
    return _then(_InvokedPairing(
      cadenceSensor == freezed
          ? _value.cadenceSensor
          : cadenceSensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }

  @override
  $SensorCopyWith<$Res> get cadenceSensor {
    return $SensorCopyWith<$Res>(_value.cadenceSensor, (value) {
      return _then(_value.copyWith(cadenceSensor: value));
    });
  }
}

/// @nodoc

class _$_InvokedPairing implements _InvokedPairing {
  const _$_InvokedPairing(this.cadenceSensor);

  @override
  final Sensor cadenceSensor;

  @override
  String toString() {
    return 'CadenceEvent.invokedPairing(cadenceSensor: $cadenceSensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvokedPairing &&
            (identical(other.cadenceSensor, cadenceSensor) ||
                const DeepCollectionEquality()
                    .equals(other.cadenceSensor, cadenceSensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cadenceSensor);

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
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return invokedPairing(cadenceSensor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (invokedPairing != null) {
      return invokedPairing(cadenceSensor);
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (invokedPairing != null) {
      return invokedPairing(this);
    }
    return orElse();
  }
}

abstract class _InvokedPairing implements CadenceEvent {
  const factory _InvokedPairing(Sensor cadenceSensor) = _$_InvokedPairing;

  Sensor get cadenceSensor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvokedPairingCopyWith<_InvokedPairing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValueTransmittedCopyWith<$Res> {
  factory _$ValueTransmittedCopyWith(
          _ValueTransmitted value, $Res Function(_ValueTransmitted) then) =
      __$ValueTransmittedCopyWithImpl<$Res>;
  $Res call({CadenceRepository cadenceRepository, int rpm});
}

/// @nodoc
class __$ValueTransmittedCopyWithImpl<$Res>
    extends _$CadenceEventCopyWithImpl<$Res>
    implements _$ValueTransmittedCopyWith<$Res> {
  __$ValueTransmittedCopyWithImpl(
      _ValueTransmitted _value, $Res Function(_ValueTransmitted) _then)
      : super(_value, (v) => _then(v as _ValueTransmitted));

  @override
  _ValueTransmitted get _value => super._value as _ValueTransmitted;

  @override
  $Res call({
    Object? cadenceRepository = freezed,
    Object? rpm = freezed,
  }) {
    return _then(_ValueTransmitted(
      cadenceRepository == freezed
          ? _value.cadenceRepository
          : cadenceRepository // ignore: cast_nullable_to_non_nullable
              as CadenceRepository,
      rpm == freezed
          ? _value.rpm
          : rpm // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ValueTransmitted implements _ValueTransmitted {
  const _$_ValueTransmitted(this.cadenceRepository, this.rpm);

  @override
  final CadenceRepository cadenceRepository;
  @override
  final int rpm;

  @override
  String toString() {
    return 'CadenceEvent.valueTransmitted(cadenceRepository: $cadenceRepository, rpm: $rpm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueTransmitted &&
            (identical(other.cadenceRepository, cadenceRepository) ||
                const DeepCollectionEquality()
                    .equals(other.cadenceRepository, cadenceRepository)) &&
            (identical(other.rpm, rpm) ||
                const DeepCollectionEquality().equals(other.rpm, rpm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cadenceRepository) ^
      const DeepCollectionEquality().hash(rpm);

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
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return valueTransmitted(cadenceRepository, rpm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (valueTransmitted != null) {
      return valueTransmitted(cadenceRepository, rpm);
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (valueTransmitted != null) {
      return valueTransmitted(this);
    }
    return orElse();
  }
}

abstract class _ValueTransmitted implements CadenceEvent {
  const factory _ValueTransmitted(
      CadenceRepository cadenceRepository, int rpm) = _$_ValueTransmitted;

  CadenceRepository get cadenceRepository => throw _privateConstructorUsedError;
  int get rpm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValueTransmittedCopyWith<_ValueTransmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SensorConnectedCopyWith<$Res> {
  factory _$SensorConnectedCopyWith(
          _SensorConnected value, $Res Function(_SensorConnected) then) =
      __$SensorConnectedCopyWithImpl<$Res>;
  $Res call({Sensor cadenceSensor});

  $SensorCopyWith<$Res> get cadenceSensor;
}

/// @nodoc
class __$SensorConnectedCopyWithImpl<$Res>
    extends _$CadenceEventCopyWithImpl<$Res>
    implements _$SensorConnectedCopyWith<$Res> {
  __$SensorConnectedCopyWithImpl(
      _SensorConnected _value, $Res Function(_SensorConnected) _then)
      : super(_value, (v) => _then(v as _SensorConnected));

  @override
  _SensorConnected get _value => super._value as _SensorConnected;

  @override
  $Res call({
    Object? cadenceSensor = freezed,
  }) {
    return _then(_SensorConnected(
      cadenceSensor == freezed
          ? _value.cadenceSensor
          : cadenceSensor // ignore: cast_nullable_to_non_nullable
              as Sensor,
    ));
  }

  @override
  $SensorCopyWith<$Res> get cadenceSensor {
    return $SensorCopyWith<$Res>(_value.cadenceSensor, (value) {
      return _then(_value.copyWith(cadenceSensor: value));
    });
  }
}

/// @nodoc

class _$_SensorConnected implements _SensorConnected {
  const _$_SensorConnected(this.cadenceSensor);

  @override
  final Sensor cadenceSensor;

  @override
  String toString() {
    return 'CadenceEvent.sensorConnected(cadenceSensor: $cadenceSensor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SensorConnected &&
            (identical(other.cadenceSensor, cadenceSensor) ||
                const DeepCollectionEquality()
                    .equals(other.cadenceSensor, cadenceSensor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cadenceSensor);

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
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return sensorConnected(cadenceSensor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (sensorConnected != null) {
      return sensorConnected(cadenceSensor);
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (sensorConnected != null) {
      return sensorConnected(this);
    }
    return orElse();
  }
}

abstract class _SensorConnected implements CadenceEvent {
  const factory _SensorConnected(Sensor cadenceSensor) = _$_SensorConnected;

  Sensor get cadenceSensor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SensorConnectedCopyWith<_SensorConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SensorDisconnectedCopyWith<$Res> {
  factory _$SensorDisconnectedCopyWith(
          _SensorDisconnected value, $Res Function(_SensorDisconnected) then) =
      __$SensorDisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SensorDisconnectedCopyWithImpl<$Res>
    extends _$CadenceEventCopyWithImpl<$Res>
    implements _$SensorDisconnectedCopyWith<$Res> {
  __$SensorDisconnectedCopyWithImpl(
      _SensorDisconnected _value, $Res Function(_SensorDisconnected) _then)
      : super(_value, (v) => _then(v as _SensorDisconnected));

  @override
  _SensorDisconnected get _value => super._value as _SensorDisconnected;
}

/// @nodoc

class _$_SensorDisconnected implements _SensorDisconnected {
  const _$_SensorDisconnected();

  @override
  String toString() {
    return 'CadenceEvent.sensorDisconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SensorDisconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function(Sensor cadenceSensor) invokedPairing,
    required TResult Function(CadenceRepository cadenceRepository, int rpm)
        valueTransmitted,
    required TResult Function(Sensor cadenceSensor) sensorConnected,
    required TResult Function() sensorDisconnected,
  }) {
    return sensorDisconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function(Sensor cadenceSensor)? invokedPairing,
    TResult Function(CadenceRepository cadenceRepository, int rpm)?
        valueTransmitted,
    TResult Function(Sensor cadenceSensor)? sensorConnected,
    TResult Function()? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (sensorDisconnected != null) {
      return sensorDisconnected();
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
    required TResult Function(_SensorDisconnected value) sensorDisconnected,
  }) {
    return sensorDisconnected(this);
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
    TResult Function(_SensorDisconnected value)? sensorDisconnected,
    required TResult orElse(),
  }) {
    if (sensorDisconnected != null) {
      return sensorDisconnected(this);
    }
    return orElse();
  }
}

abstract class _SensorDisconnected implements CadenceEvent {
  const factory _SensorDisconnected() = _$_SensorDisconnected;
}

/// @nodoc
class _$CadenceStateTearOff {
  const _$CadenceStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Disconnected disconnected() {
    return const _Disconnected();
  }

  _Searching searching() {
    return const _Searching();
  }

  _Connected connected(CadenceRepository cadenceRepository, int? rpm) {
    return _Connected(
      cadenceRepository,
      rpm,
    );
  }
}

/// @nodoc
const $CadenceState = _$CadenceStateTearOff();

/// @nodoc
mixin _$CadenceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function(CadenceRepository cadenceRepository, int? rpm)
        connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(CadenceRepository cadenceRepository, int? rpm)? connected,
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
abstract class $CadenceStateCopyWith<$Res> {
  factory $CadenceStateCopyWith(
          CadenceState value, $Res Function(CadenceState) then) =
      _$CadenceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CadenceStateCopyWithImpl<$Res> implements $CadenceStateCopyWith<$Res> {
  _$CadenceStateCopyWithImpl(this._value, this._then);

  final CadenceState _value;
  // ignore: unused_field
  final $Res Function(CadenceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CadenceStateCopyWithImpl<$Res>
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
    return 'CadenceState.initial()';
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
    required TResult Function(CadenceRepository cadenceRepository, int? rpm)
        connected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(CadenceRepository cadenceRepository, int? rpm)? connected,
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

abstract class _Initial implements CadenceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DisconnectedCopyWith<$Res> {
  factory _$DisconnectedCopyWith(
          _Disconnected value, $Res Function(_Disconnected) then) =
      __$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisconnectedCopyWithImpl<$Res> extends _$CadenceStateCopyWithImpl<$Res>
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
    return 'CadenceState.disconnected()';
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
    required TResult Function(CadenceRepository cadenceRepository, int? rpm)
        connected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(CadenceRepository cadenceRepository, int? rpm)? connected,
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

abstract class _Disconnected implements CadenceState {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
abstract class _$SearchingCopyWith<$Res> {
  factory _$SearchingCopyWith(
          _Searching value, $Res Function(_Searching) then) =
      __$SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchingCopyWithImpl<$Res> extends _$CadenceStateCopyWithImpl<$Res>
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
    return 'CadenceState.searching()';
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
    required TResult Function(CadenceRepository cadenceRepository, int? rpm)
        connected,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(CadenceRepository cadenceRepository, int? rpm)? connected,
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

abstract class _Searching implements CadenceState {
  const factory _Searching() = _$_Searching;
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
  $Res call({CadenceRepository cadenceRepository, int? rpm});
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res> extends _$CadenceStateCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;

  @override
  $Res call({
    Object? cadenceRepository = freezed,
    Object? rpm = freezed,
  }) {
    return _then(_Connected(
      cadenceRepository == freezed
          ? _value.cadenceRepository
          : cadenceRepository // ignore: cast_nullable_to_non_nullable
              as CadenceRepository,
      rpm == freezed
          ? _value.rpm
          : rpm // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.cadenceRepository, this.rpm);

  @override
  final CadenceRepository cadenceRepository;
  @override
  final int? rpm;

  @override
  String toString() {
    return 'CadenceState.connected(cadenceRepository: $cadenceRepository, rpm: $rpm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Connected &&
            (identical(other.cadenceRepository, cadenceRepository) ||
                const DeepCollectionEquality()
                    .equals(other.cadenceRepository, cadenceRepository)) &&
            (identical(other.rpm, rpm) ||
                const DeepCollectionEquality().equals(other.rpm, rpm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cadenceRepository) ^
      const DeepCollectionEquality().hash(rpm);

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
    required TResult Function(CadenceRepository cadenceRepository, int? rpm)
        connected,
  }) {
    return connected(cadenceRepository, rpm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function(CadenceRepository cadenceRepository, int? rpm)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(cadenceRepository, rpm);
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

abstract class _Connected implements CadenceState {
  const factory _Connected(CadenceRepository cadenceRepository, int? rpm) =
      _$_Connected;

  CadenceRepository get cadenceRepository => throw _privateConstructorUsedError;
  int? get rpm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectedCopyWith<_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}
