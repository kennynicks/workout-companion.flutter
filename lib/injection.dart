import 'package:flutter_blue/flutter_blue.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_companion_flutter/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureInjection() => $initGetIt(getIt);

@module
abstract class RegisterModule {
  @singleton
  FlutterBlue get flutterBlue => FlutterBlue.instance;
}
