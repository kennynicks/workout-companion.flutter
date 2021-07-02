// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_blue/flutter_blue.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/core/bloc/cadence/cadence_bloc.dart' as _i3;
import 'application/core/bloc/fitnessmachine/fitnessmachine_bloc.dart' as _i4;
import 'application/core/bloc/heartrate/heartrate_bloc.dart' as _i5;
import 'application/pairing/bloc/pairing_bloc.dart' as _i7;
import 'domain/core/sensors/i_sensor_repository.dart' as _i6;
import 'infrastructure/core/sensors/sensor_repository.dart' as _i9;
import 'injection.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.CadenceBloc>(() => _i3.CadenceBloc());
  gh.factory<_i4.FitnessmachineBloc>(() => _i4.FitnessmachineBloc());
  gh.factory<_i5.HeartrateBloc>(
      () => _i5.HeartrateBloc(get<_i6.ISensorRepository>()));
  gh.factory<_i7.PairingBloc>(() => _i7.PairingBloc(
      cadenceBloc: get<_i3.CadenceBloc>(),
      heartrateBloc: get<_i5.HeartrateBloc>(),
      fitnessmachineBloc: get<_i4.FitnessmachineBloc>()));
  gh.singleton<_i8.FlutterBlue>(registerModule.flutterBlue);
  gh.singleton<_i6.ISensorRepository>(
      _i9.SensorRepository(flutterBlue: get<_i8.FlutterBlue>()),
      dispose: (i) => i.dispose());
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
