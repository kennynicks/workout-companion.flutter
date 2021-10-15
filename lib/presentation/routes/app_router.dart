import 'package:auto_route/annotations.dart';
import 'package:workout_companion_flutter/presentation/pages/pairing/pairing_page.dart';
import 'package:workout_companion_flutter/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[AutoRoute(page: SplashPage, initial: true), AutoRoute(page: PairingPage)])
class $AppRouter {}
