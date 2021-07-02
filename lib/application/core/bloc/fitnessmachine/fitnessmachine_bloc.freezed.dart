// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fitnessmachine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FitnessmachineEventTearOff {
  const _$FitnessmachineEventTearOff();

  _SearchStarted searchStarted() {
    return const _SearchStarted();
  }

  _SearchStopped searchStopped() {
    return const _SearchStopped();
  }

  _InvokedDisconnect invokedDisconnect() {
    return const _InvokedDisconnect();
  }

  _InvokedPairing invokedPairing() {
    return const _InvokedPairing();
  }

  _ValueTransmitted valueTransmitted() {
    return const _ValueTransmitted();
  }
}

/// @nodoc
const $FitnessmachineEvent = _$FitnessmachineEventTearOff();

/// @nodoc
mixin _$FitnessmachineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function() invokedPairing,
    required TResult Function() valueTransmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function()? invokedPairing,
    TResult Function()? valueTransmitted,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    TResult Function(_SearchStopped value)? searchStopped,
    TResult Function(_InvokedDisconnect value)? invokedDisconnect,
    TResult Function(_InvokedPairing value)? invokedPairing,
    TResult Function(_ValueTransmitted value)? valueTransmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitnessmachineEventCopyWith<$Res> {
  factory $FitnessmachineEventCopyWith(
          FitnessmachineEvent value, $Res Function(FitnessmachineEvent) then) =
      _$FitnessmachineEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FitnessmachineEventCopyWithImpl<$Res>
    implements $FitnessmachineEventCopyWith<$Res> {
  _$FitnessmachineEventCopyWithImpl(this._value, this._then);

  final FitnessmachineEvent _value;
  // ignore: unused_field
  final $Res Function(FitnessmachineEvent) _then;
}

/// @nodoc
abstract class _$SearchStartedCopyWith<$Res> {
  factory _$SearchStartedCopyWith(
          _SearchStarted value, $Res Function(_SearchStarted) then) =
      __$SearchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStartedCopyWithImpl<$Res>
    extends _$FitnessmachineEventCopyWithImpl<$Res>
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
    return 'FitnessmachineEvent.searchStarted()';
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
    required TResult Function() invokedPairing,
    required TResult Function() valueTransmitted,
  }) {
    return searchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function()? invokedPairing,
    TResult Function()? valueTransmitted,
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
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(this);
    }
    return orElse();
  }
}

abstract class _SearchStarted implements FitnessmachineEvent {
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
    extends _$FitnessmachineEventCopyWithImpl<$Res>
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
    return 'FitnessmachineEvent.searchStopped()';
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
    required TResult Function() invokedPairing,
    required TResult Function() valueTransmitted,
  }) {
    return searchStopped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function()? invokedPairing,
    TResult Function()? valueTransmitted,
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
    required TResult orElse(),
  }) {
    if (searchStopped != null) {
      return searchStopped(this);
    }
    return orElse();
  }
}

abstract class _SearchStopped implements FitnessmachineEvent {
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
    extends _$FitnessmachineEventCopyWithImpl<$Res>
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
    return 'FitnessmachineEvent.invokedDisconnect()';
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
    required TResult Function() invokedPairing,
    required TResult Function() valueTransmitted,
  }) {
    return invokedDisconnect();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function()? invokedPairing,
    TResult Function()? valueTransmitted,
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
    required TResult orElse(),
  }) {
    if (invokedDisconnect != null) {
      return invokedDisconnect(this);
    }
    return orElse();
  }
}

abstract class _InvokedDisconnect implements FitnessmachineEvent {
  const factory _InvokedDisconnect() = _$_InvokedDisconnect;
}

/// @nodoc
abstract class _$InvokedPairingCopyWith<$Res> {
  factory _$InvokedPairingCopyWith(
          _InvokedPairing value, $Res Function(_InvokedPairing) then) =
      __$InvokedPairingCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvokedPairingCopyWithImpl<$Res>
    extends _$FitnessmachineEventCopyWithImpl<$Res>
    implements _$InvokedPairingCopyWith<$Res> {
  __$InvokedPairingCopyWithImpl(
      _InvokedPairing _value, $Res Function(_InvokedPairing) _then)
      : super(_value, (v) => _then(v as _InvokedPairing));

  @override
  _InvokedPairing get _value => super._value as _InvokedPairing;
}

/// @nodoc

class _$_InvokedPairing implements _InvokedPairing {
  const _$_InvokedPairing();

  @override
  String toString() {
    return 'FitnessmachineEvent.invokedPairing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvokedPairing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function() invokedPairing,
    required TResult Function() valueTransmitted,
  }) {
    return invokedPairing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function()? invokedPairing,
    TResult Function()? valueTransmitted,
    required TResult orElse(),
  }) {
    if (invokedPairing != null) {
      return invokedPairing();
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
    required TResult orElse(),
  }) {
    if (invokedPairing != null) {
      return invokedPairing(this);
    }
    return orElse();
  }
}

abstract class _InvokedPairing implements FitnessmachineEvent {
  const factory _InvokedPairing() = _$_InvokedPairing;
}

/// @nodoc
abstract class _$ValueTransmittedCopyWith<$Res> {
  factory _$ValueTransmittedCopyWith(
          _ValueTransmitted value, $Res Function(_ValueTransmitted) then) =
      __$ValueTransmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ValueTransmittedCopyWithImpl<$Res>
    extends _$FitnessmachineEventCopyWithImpl<$Res>
    implements _$ValueTransmittedCopyWith<$Res> {
  __$ValueTransmittedCopyWithImpl(
      _ValueTransmitted _value, $Res Function(_ValueTransmitted) _then)
      : super(_value, (v) => _then(v as _ValueTransmitted));

  @override
  _ValueTransmitted get _value => super._value as _ValueTransmitted;
}

/// @nodoc

class _$_ValueTransmitted implements _ValueTransmitted {
  const _$_ValueTransmitted();

  @override
  String toString() {
    return 'FitnessmachineEvent.valueTransmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ValueTransmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchStarted,
    required TResult Function() searchStopped,
    required TResult Function() invokedDisconnect,
    required TResult Function() invokedPairing,
    required TResult Function() valueTransmitted,
  }) {
    return valueTransmitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchStarted,
    TResult Function()? searchStopped,
    TResult Function()? invokedDisconnect,
    TResult Function()? invokedPairing,
    TResult Function()? valueTransmitted,
    required TResult orElse(),
  }) {
    if (valueTransmitted != null) {
      return valueTransmitted();
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
    required TResult orElse(),
  }) {
    if (valueTransmitted != null) {
      return valueTransmitted(this);
    }
    return orElse();
  }
}

abstract class _ValueTransmitted implements FitnessmachineEvent {
  const factory _ValueTransmitted() = _$_ValueTransmitted;
}

/// @nodoc
class _$FitnessmachineStateTearOff {
  const _$FitnessmachineStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Disconnected disconnected() {
    return const _Disconnected();
  }

  _Searching searching() {
    return const _Searching();
  }

  _Connected connected() {
    return const _Connected();
  }
}

/// @nodoc
const $FitnessmachineState = _$FitnessmachineStateTearOff();

/// @nodoc
mixin _$FitnessmachineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function() connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function()? connected,
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
abstract class $FitnessmachineStateCopyWith<$Res> {
  factory $FitnessmachineStateCopyWith(
          FitnessmachineState value, $Res Function(FitnessmachineState) then) =
      _$FitnessmachineStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FitnessmachineStateCopyWithImpl<$Res>
    implements $FitnessmachineStateCopyWith<$Res> {
  _$FitnessmachineStateCopyWithImpl(this._value, this._then);

  final FitnessmachineState _value;
  // ignore: unused_field
  final $Res Function(FitnessmachineState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FitnessmachineStateCopyWithImpl<$Res>
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
    return 'FitnessmachineState.initial()';
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
    required TResult Function() connected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function()? connected,
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

abstract class _Initial implements FitnessmachineState {
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
    extends _$FitnessmachineStateCopyWithImpl<$Res>
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
    return 'FitnessmachineState.disconnected()';
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
    required TResult Function() connected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function()? connected,
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

abstract class _Disconnected implements FitnessmachineState {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
abstract class _$SearchingCopyWith<$Res> {
  factory _$SearchingCopyWith(
          _Searching value, $Res Function(_Searching) then) =
      __$SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchingCopyWithImpl<$Res>
    extends _$FitnessmachineStateCopyWithImpl<$Res>
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
    return 'FitnessmachineState.searching()';
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
    required TResult Function() connected,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function()? connected,
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

abstract class _Searching implements FitnessmachineState {
  const factory _Searching() = _$_Searching;
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res>
    extends _$FitnessmachineStateCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected();

  @override
  String toString() {
    return 'FitnessmachineState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() disconnected,
    required TResult Function() searching,
    required TResult Function() connected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? disconnected,
    TResult Function()? searching,
    TResult Function()? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
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

abstract class _Connected implements FitnessmachineState {
  const factory _Connected() = _$_Connected;
}
