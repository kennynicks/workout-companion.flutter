// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionStateTearOff {
  const _$ConnectionStateTearOff();

  Connected connected() {
    return const Connected();
  }

  Disconnected disconnected() {
    return const Disconnected();
  }
}

/// @nodoc
const $ConnectionState = _$ConnectionStateTearOff();

/// @nodoc
mixin _$ConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  final ConnectionState _value;
  // ignore: unused_field
  final $Res Function(ConnectionState) _then;
}

/// @nodoc
abstract class $ConnectedCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) then) =
      _$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectedCopyWithImpl<$Res> extends _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(Connected _value, $Res Function(Connected) _then)
      : super(_value, (v) => _then(v as Connected));

  @override
  Connected get _value => super._value as Connected;
}

/// @nodoc

class _$Connected implements Connected {
  const _$Connected();

  @override
  String toString() {
    return 'ConnectionState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
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
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements ConnectionState {
  const factory Connected() = _$Connected;
}

/// @nodoc
abstract class $DisconnectedCopyWith<$Res> {
  factory $DisconnectedCopyWith(
          Disconnected value, $Res Function(Disconnected) then) =
      _$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements $DisconnectedCopyWith<$Res> {
  _$DisconnectedCopyWithImpl(
      Disconnected _value, $Res Function(Disconnected) _then)
      : super(_value, (v) => _then(v as Disconnected));

  @override
  Disconnected get _value => super._value as Disconnected;
}

/// @nodoc

class _$Disconnected implements Disconnected {
  const _$Disconnected();

  @override
  String toString() {
    return 'ConnectionState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
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
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements ConnectionState {
  const factory Disconnected() = _$Disconnected;
}
