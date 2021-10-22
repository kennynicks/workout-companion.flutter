// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceTypeTearOff {
  const _$ServiceTypeTearOff();

  Heartrate heartrate() {
    return const Heartrate();
  }

  Cadence cadence() {
    return const Cadence();
  }

  Trainer trainer() {
    return const Trainer();
  }
}

/// @nodoc
const $ServiceType = _$ServiceTypeTearOff();

/// @nodoc
mixin _$ServiceType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heartrate,
    required TResult Function() cadence,
    required TResult Function() trainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Heartrate value) heartrate,
    required TResult Function(Cadence value) cadence,
    required TResult Function(Trainer value) trainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceTypeCopyWith<$Res> {
  factory $ServiceTypeCopyWith(
          ServiceType value, $Res Function(ServiceType) then) =
      _$ServiceTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceTypeCopyWithImpl<$Res> implements $ServiceTypeCopyWith<$Res> {
  _$ServiceTypeCopyWithImpl(this._value, this._then);

  final ServiceType _value;
  // ignore: unused_field
  final $Res Function(ServiceType) _then;
}

/// @nodoc
abstract class $HeartrateCopyWith<$Res> {
  factory $HeartrateCopyWith(Heartrate value, $Res Function(Heartrate) then) =
      _$HeartrateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeartrateCopyWithImpl<$Res> extends _$ServiceTypeCopyWithImpl<$Res>
    implements $HeartrateCopyWith<$Res> {
  _$HeartrateCopyWithImpl(Heartrate _value, $Res Function(Heartrate) _then)
      : super(_value, (v) => _then(v as Heartrate));

  @override
  Heartrate get _value => super._value as Heartrate;
}

/// @nodoc

class _$Heartrate with DiagnosticableTreeMixin implements Heartrate {
  const _$Heartrate();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceType.heartrate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceType.heartrate'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Heartrate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heartrate,
    required TResult Function() cadence,
    required TResult Function() trainer,
  }) {
    return heartrate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
  }) {
    return heartrate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
    required TResult orElse(),
  }) {
    if (heartrate != null) {
      return heartrate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Heartrate value) heartrate,
    required TResult Function(Cadence value) cadence,
    required TResult Function(Trainer value) trainer,
  }) {
    return heartrate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
  }) {
    return heartrate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
    required TResult orElse(),
  }) {
    if (heartrate != null) {
      return heartrate(this);
    }
    return orElse();
  }
}

abstract class Heartrate implements ServiceType {
  const factory Heartrate() = _$Heartrate;
}

/// @nodoc
abstract class $CadenceCopyWith<$Res> {
  factory $CadenceCopyWith(Cadence value, $Res Function(Cadence) then) =
      _$CadenceCopyWithImpl<$Res>;
}

/// @nodoc
class _$CadenceCopyWithImpl<$Res> extends _$ServiceTypeCopyWithImpl<$Res>
    implements $CadenceCopyWith<$Res> {
  _$CadenceCopyWithImpl(Cadence _value, $Res Function(Cadence) _then)
      : super(_value, (v) => _then(v as Cadence));

  @override
  Cadence get _value => super._value as Cadence;
}

/// @nodoc

class _$Cadence with DiagnosticableTreeMixin implements Cadence {
  const _$Cadence();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceType.cadence()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceType.cadence'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Cadence);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heartrate,
    required TResult Function() cadence,
    required TResult Function() trainer,
  }) {
    return cadence();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
  }) {
    return cadence?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
    required TResult orElse(),
  }) {
    if (cadence != null) {
      return cadence();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Heartrate value) heartrate,
    required TResult Function(Cadence value) cadence,
    required TResult Function(Trainer value) trainer,
  }) {
    return cadence(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
  }) {
    return cadence?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
    required TResult orElse(),
  }) {
    if (cadence != null) {
      return cadence(this);
    }
    return orElse();
  }
}

abstract class Cadence implements ServiceType {
  const factory Cadence() = _$Cadence;
}

/// @nodoc
abstract class $TrainerCopyWith<$Res> {
  factory $TrainerCopyWith(Trainer value, $Res Function(Trainer) then) =
      _$TrainerCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainerCopyWithImpl<$Res> extends _$ServiceTypeCopyWithImpl<$Res>
    implements $TrainerCopyWith<$Res> {
  _$TrainerCopyWithImpl(Trainer _value, $Res Function(Trainer) _then)
      : super(_value, (v) => _then(v as Trainer));

  @override
  Trainer get _value => super._value as Trainer;
}

/// @nodoc

class _$Trainer with DiagnosticableTreeMixin implements Trainer {
  const _$Trainer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceType.trainer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceType.trainer'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Trainer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heartrate,
    required TResult Function() cadence,
    required TResult Function() trainer,
  }) {
    return trainer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
  }) {
    return trainer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heartrate,
    TResult Function()? cadence,
    TResult Function()? trainer,
    required TResult orElse(),
  }) {
    if (trainer != null) {
      return trainer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Heartrate value) heartrate,
    required TResult Function(Cadence value) cadence,
    required TResult Function(Trainer value) trainer,
  }) {
    return trainer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
  }) {
    return trainer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Heartrate value)? heartrate,
    TResult Function(Cadence value)? cadence,
    TResult Function(Trainer value)? trainer,
    required TResult orElse(),
  }) {
    if (trainer != null) {
      return trainer(this);
    }
    return orElse();
  }
}

abstract class Trainer implements ServiceType {
  const factory Trainer() = _$Trainer;
}
