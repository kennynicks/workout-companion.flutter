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

  _AvailableServicesChanged availableServicesChanged(
      {required List<ServiceType> availableServices}) {
    return _AvailableServicesChanged(
      availableServices: availableServices,
    );
  }

  _ConnectedServicesChanged connectedServicesChanged(
      {required List<ServiceType> connectedServices}) {
    return _ConnectedServicesChanged(
      connectedServices: connectedServices,
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
    required TResult Function(List<ServiceType> availableServices)
        availableServicesChanged,
    required TResult Function(List<ServiceType> connectedServices)
        connectedServicesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableServicesChanged value)
        availableServicesChanged,
    required TResult Function(_ConnectedServicesChanged value)
        connectedServicesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
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
    required TResult Function(List<ServiceType> availableServices)
        availableServicesChanged,
    required TResult Function(List<ServiceType> connectedServices)
        connectedServicesChanged,
  }) {
    return pairingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
  }) {
    return pairingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
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
    required TResult Function(_AvailableServicesChanged value)
        availableServicesChanged,
    required TResult Function(_ConnectedServicesChanged value)
        connectedServicesChanged,
  }) {
    return pairingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
  }) {
    return pairingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
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
abstract class _$AvailableServicesChangedCopyWith<$Res> {
  factory _$AvailableServicesChangedCopyWith(_AvailableServicesChanged value,
          $Res Function(_AvailableServicesChanged) then) =
      __$AvailableServicesChangedCopyWithImpl<$Res>;
  $Res call({List<ServiceType> availableServices});
}

/// @nodoc
class __$AvailableServicesChangedCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$AvailableServicesChangedCopyWith<$Res> {
  __$AvailableServicesChangedCopyWithImpl(_AvailableServicesChanged _value,
      $Res Function(_AvailableServicesChanged) _then)
      : super(_value, (v) => _then(v as _AvailableServicesChanged));

  @override
  _AvailableServicesChanged get _value =>
      super._value as _AvailableServicesChanged;

  @override
  $Res call({
    Object? availableServices = freezed,
  }) {
    return _then(_AvailableServicesChanged(
      availableServices: availableServices == freezed
          ? _value.availableServices
          : availableServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceType>,
    ));
  }
}

/// @nodoc

class _$_AvailableServicesChanged implements _AvailableServicesChanged {
  const _$_AvailableServicesChanged({required this.availableServices});

  @override
  final List<ServiceType> availableServices;

  @override
  String toString() {
    return 'PairingEvent.availableServicesChanged(availableServices: $availableServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableServicesChanged &&
            (identical(other.availableServices, availableServices) ||
                const DeepCollectionEquality()
                    .equals(other.availableServices, availableServices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(availableServices);

  @JsonKey(ignore: true)
  @override
  _$AvailableServicesChangedCopyWith<_AvailableServicesChanged> get copyWith =>
      __$AvailableServicesChangedCopyWithImpl<_AvailableServicesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function(List<ServiceType> availableServices)
        availableServicesChanged,
    required TResult Function(List<ServiceType> connectedServices)
        connectedServicesChanged,
  }) {
    return availableServicesChanged(availableServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
  }) {
    return availableServicesChanged?.call(availableServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
    required TResult orElse(),
  }) {
    if (availableServicesChanged != null) {
      return availableServicesChanged(availableServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableServicesChanged value)
        availableServicesChanged,
    required TResult Function(_ConnectedServicesChanged value)
        connectedServicesChanged,
  }) {
    return availableServicesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
  }) {
    return availableServicesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
    required TResult orElse(),
  }) {
    if (availableServicesChanged != null) {
      return availableServicesChanged(this);
    }
    return orElse();
  }
}

abstract class _AvailableServicesChanged implements PairingEvent {
  const factory _AvailableServicesChanged(
          {required List<ServiceType> availableServices}) =
      _$_AvailableServicesChanged;

  List<ServiceType> get availableServices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AvailableServicesChangedCopyWith<_AvailableServicesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConnectedServicesChangedCopyWith<$Res> {
  factory _$ConnectedServicesChangedCopyWith(_ConnectedServicesChanged value,
          $Res Function(_ConnectedServicesChanged) then) =
      __$ConnectedServicesChangedCopyWithImpl<$Res>;
  $Res call({List<ServiceType> connectedServices});
}

/// @nodoc
class __$ConnectedServicesChangedCopyWithImpl<$Res>
    extends _$PairingEventCopyWithImpl<$Res>
    implements _$ConnectedServicesChangedCopyWith<$Res> {
  __$ConnectedServicesChangedCopyWithImpl(_ConnectedServicesChanged _value,
      $Res Function(_ConnectedServicesChanged) _then)
      : super(_value, (v) => _then(v as _ConnectedServicesChanged));

  @override
  _ConnectedServicesChanged get _value =>
      super._value as _ConnectedServicesChanged;

  @override
  $Res call({
    Object? connectedServices = freezed,
  }) {
    return _then(_ConnectedServicesChanged(
      connectedServices: connectedServices == freezed
          ? _value.connectedServices
          : connectedServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceType>,
    ));
  }
}

/// @nodoc

class _$_ConnectedServicesChanged implements _ConnectedServicesChanged {
  const _$_ConnectedServicesChanged({required this.connectedServices});

  @override
  final List<ServiceType> connectedServices;

  @override
  String toString() {
    return 'PairingEvent.connectedServicesChanged(connectedServices: $connectedServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectedServicesChanged &&
            (identical(other.connectedServices, connectedServices) ||
                const DeepCollectionEquality()
                    .equals(other.connectedServices, connectedServices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectedServices);

  @JsonKey(ignore: true)
  @override
  _$ConnectedServicesChangedCopyWith<_ConnectedServicesChanged> get copyWith =>
      __$ConnectedServicesChangedCopyWithImpl<_ConnectedServicesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pairingStarted,
    required TResult Function(List<ServiceType> availableServices)
        availableServicesChanged,
    required TResult Function(List<ServiceType> connectedServices)
        connectedServicesChanged,
  }) {
    return connectedServicesChanged(connectedServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
  }) {
    return connectedServicesChanged?.call(connectedServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pairingStarted,
    TResult Function(List<ServiceType> availableServices)?
        availableServicesChanged,
    TResult Function(List<ServiceType> connectedServices)?
        connectedServicesChanged,
    required TResult orElse(),
  }) {
    if (connectedServicesChanged != null) {
      return connectedServicesChanged(connectedServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PairingStarted value) pairingStarted,
    required TResult Function(_AvailableServicesChanged value)
        availableServicesChanged,
    required TResult Function(_ConnectedServicesChanged value)
        connectedServicesChanged,
  }) {
    return connectedServicesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
  }) {
    return connectedServicesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PairingStarted value)? pairingStarted,
    TResult Function(_AvailableServicesChanged value)? availableServicesChanged,
    TResult Function(_ConnectedServicesChanged value)? connectedServicesChanged,
    required TResult orElse(),
  }) {
    if (connectedServicesChanged != null) {
      return connectedServicesChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectedServicesChanged implements PairingEvent {
  const factory _ConnectedServicesChanged(
          {required List<ServiceType> connectedServices}) =
      _$_ConnectedServicesChanged;

  List<ServiceType> get connectedServices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectedServicesChangedCopyWith<_ConnectedServicesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PairingStateTearOff {
  const _$PairingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Pairing pairing(
      {required List<ServiceType> connectedServices,
      required List<ServiceType> availableServices}) {
    return _Pairing(
      connectedServices: connectedServices,
      availableServices: availableServices,
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
    required TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)
        pairing,
    required TResult Function() paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
        pairing,
    TResult Function()? paired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
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
    required TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)
        pairing,
    required TResult Function() paired,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
        pairing,
    TResult Function()? paired,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
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
  $Res call(
      {List<ServiceType> connectedServices,
      List<ServiceType> availableServices});
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
    Object? connectedServices = freezed,
    Object? availableServices = freezed,
  }) {
    return _then(_Pairing(
      connectedServices: connectedServices == freezed
          ? _value.connectedServices
          : connectedServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceType>,
      availableServices: availableServices == freezed
          ? _value.availableServices
          : availableServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceType>,
    ));
  }
}

/// @nodoc

class _$_Pairing implements _Pairing {
  const _$_Pairing(
      {required this.connectedServices, required this.availableServices});

  @override
  final List<ServiceType> connectedServices;
  @override
  final List<ServiceType> availableServices;

  @override
  String toString() {
    return 'PairingState.pairing(connectedServices: $connectedServices, availableServices: $availableServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pairing &&
            (identical(other.connectedServices, connectedServices) ||
                const DeepCollectionEquality()
                    .equals(other.connectedServices, connectedServices)) &&
            (identical(other.availableServices, availableServices) ||
                const DeepCollectionEquality()
                    .equals(other.availableServices, availableServices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectedServices) ^
      const DeepCollectionEquality().hash(availableServices);

  @JsonKey(ignore: true)
  @override
  _$PairingCopyWith<_Pairing> get copyWith =>
      __$PairingCopyWithImpl<_Pairing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)
        pairing,
    required TResult Function() paired,
  }) {
    return pairing(connectedServices, availableServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
        pairing,
    TResult Function()? paired,
  }) {
    return pairing?.call(connectedServices, availableServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
        pairing,
    TResult Function()? paired,
    required TResult orElse(),
  }) {
    if (pairing != null) {
      return pairing(connectedServices, availableServices);
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
      {required List<ServiceType> connectedServices,
      required List<ServiceType> availableServices}) = _$_Pairing;

  List<ServiceType> get connectedServices => throw _privateConstructorUsedError;
  List<ServiceType> get availableServices => throw _privateConstructorUsedError;
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
    required TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)
        pairing,
    required TResult Function() paired,
  }) {
    return paired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
        pairing,
    TResult Function()? paired,
  }) {
    return paired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ServiceType> connectedServices,
            List<ServiceType> availableServices)?
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
