import 'package:auto_route/annotations.dart';
import 'package:workout_companion_flutter/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
])
class $AppRouter {}
