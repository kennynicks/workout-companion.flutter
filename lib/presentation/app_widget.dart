import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_companion_flutter/application/core/bloc/cadence/cadence_bloc.dart';
import 'package:workout_companion_flutter/application/core/bloc/fitnessmachine/fitnessmachine_bloc.dart';
import 'package:workout_companion_flutter/application/core/bloc/heartrate/heartrate_bloc.dart';
import 'package:workout_companion_flutter/injection.dart';
import 'package:workout_companion_flutter/presentation/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HeartrateBloc>()),
        BlocProvider(create: (_) => getIt<CadenceBloc>()),
        BlocProvider(create: (_) => getIt<FitnessmachineBloc>())
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Workout Companion',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: Colors.green[800],
                iconTheme: ThemeData.dark().iconTheme,
              ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
            foregroundColor: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
