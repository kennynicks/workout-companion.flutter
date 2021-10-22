// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async' as _i6;

import 'package:flutter_blue/flutter_blue.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injection.dart' as _i7;
import 'presentation/bloc/pairing/pairing_bloc.dart' as _i5;
import 'services/sensor_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.FlutterBlue>(registerModule.flutterBlue);
  gh.singleton<_i4.SensorService>(
      _i4.SensorService(flutterBlue: get<_i3.FlutterBlue>()));
  gh.singleton<_i5.PairingBloc>(_i5.PairingBloc(
      get<_i6.StreamSubscription<dynamic>>(),
      sensorService: get<_i4.SensorService>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
