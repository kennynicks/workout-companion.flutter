// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  _PairingSkipped pairingSkipped() {
    return const _PairingSkipped();
  }
}

/// @nodoc
const $PairingEvent = _$PairingEventTearOff();

/// @nodoc
mixin _$PairingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() pairingSkipped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? pairingSkipped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_PairingSkipped value) pairingSkipped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_PairingSkipped value)? pairingSkipped,
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
    required TResult Function() pairingSkipped,
  }) {
    return pairingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? pairingSkipped,
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
    required TResult Function(_PairingSkipped value) pairingSkipped,
  }) {
    return pairingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_PairingSkipped value)? pairingSkipped,
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
abstract class _$PairingSkippedCopyWith<$Res> {
  factory _$PairingSkippedCopyWith(
          _PairingSkipped value, $Res Function(_PairingSkipped) then) =
      __$PairingSkippedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PairingSkippedCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$PairingSkippedCopyWith<$Res> {
  __$PairingSkippedCopyWithImpl(
      _PairingSkipped _value, $Res Function(_PairingSkipped) _then)
      : super(_value, (v) => _then(v as _PairingSkipped));

  @override
  _PairingSkipped get _value => super._value as _PairingSkipped;
}

/// @nodoc

class _$_PairingSkipped implements _PairingSkipped {
  const _$_PairingSkipped();

  @override
  String toString() {
    return 'PairingEvent.pairingSkipped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PairingSkipped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function() pairingSkipped,
  }) {
    return pairingSkipped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function()? pairingSkipped,
    required TResult orElse(),
  }) {
    if (pairingSkipped != null) {
      return pairingSkipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_PairingSkipped value) pairingSkipped,
  }) {
    return pairingSkipped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_PairingSkipped value)? pairingSkipped,
    required TResult orElse(),
  }) {
    if (pairingSkipped != null) {
      return pairingSkipped(this);
    }
    return orElse();
  }
}

abstract class _PairingSkipped implements PairingEvent {
  const factory _PairingSkipped() = _$_PairingSkipped;
}

/// @nodoc
class _$PairingStateTearOff {
  const _$PairingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Pairing pairing() {
    return const _Pairing();
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
    required TResult Function() pairing,
    required TResult Function() paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pairing,
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
    required TResult Function() pairing,
    required TResult Function() paired,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pairing,
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
}

/// @nodoc
class __$PairingCopyWithImpl<$Res> extends _$PairingStateCopyWithImpl<$Res>
    implements _$PairingCopyWith<$Res> {
  __$PairingCopyWithImpl(_Pairing _value, $Res Function(_Pairing) _then)
      : super(_value, (v) => _then(v as _Pairing));

  @override
  _Pairing get _value => super._value as _Pairing;
}

/// @nodoc

class _$_Pairing implements _Pairing {
  const _$_Pairing();

  @override
  String toString() {
    return 'PairingState.pairing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Pairing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pairing,
    required TResult Function() paired,
  }) {
    return pairing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pairing,
    TResult Function()? paired,
    required TResult orElse(),
  }) {
    if (pairing != null) {
      return pairing();
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
  const factory _Pairing() = _$_Pairing;
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
    required TResult Function() pairing,
    required TResult Function() paired,
  }) {
    return paired();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pairing,
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
