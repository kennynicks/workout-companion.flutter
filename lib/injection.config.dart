// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_blue/flutter_blue.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/core/bloc/cadence/cadence_bloc.dart' as _i3;
import 'application/core/bloc/fitnessmachine/fitnessmachine_bloc.dart' as _i4;
import 'application/core/bloc/heartrate/heartrate_bloc.dart' as _i8;
import 'application/pairing/bloc/pairing_bloc.dart' as _i9;
import 'domain/core/sensors/i_sensor_repository.dart' as _i6;
import 'infrastructure/core/sensors/sensor_repository.dart' as _i7;
import 'injection.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.CadenceBloc>(_i3.CadenceBloc());
  gh.singleton<_i4.FitnessmachineBloc>(_i4.FitnessmachineBloc());
  gh.singleton<_i5.FlutterBlue>(registerModule.flutterBlue);
  gh.singleton<_i6.ISensorRepository>(
      _i7.SensorRepository(flutterBlue: get<_i5.FlutterBlue>()),
      dispose: (i) => i.dispose());
  gh.singleton<_i8.HeartrateBloc>(
      _i8.HeartrateBloc(get<_i6.ISensorRepository>()));
  gh.singleton<_i9.PairingBloc>(_i9.PairingBloc(
      cadenceBloc: get<_i3.CadenceBloc>(),
      heartrateBloc: get<_i8.HeartrateBloc>(),
      fitnessmachineBloc: get<_i4.FitnessmachineBloc>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
