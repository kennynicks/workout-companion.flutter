import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/application/core/bloc/heartrate/heartrate_bloc.dart';
import 'package:workout_companion_flutter/application/pairing/bloc/pairing_bloc.dart';
import 'package:workout_companion_flutter/injection.dart';
import 'package:workout_companion_flutter/presentation/routes/app_router.gr.dart';

class PairingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PairingBloc>(),
      child: BlocListener<PairingBloc, PairingState>(
        listener: (BuildContext context, state) {
          state.map(
            initial: (e) {
              log("initial");
            },
            pairing: (e) {
              log("pairing $e");
            },
            paired: (e) {
              log("paired");
            },
          );
        },
        child: _PageWidget(),
      ),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // await getIt<FlutterBlue>().stopScan();
                  BlocProvider.of<PairingBloc>(context)
                      .add(const PairingEvent.pairingStarted());
                },
                child: const Text("data")),
            SizedBox(height: 50),
            BlocBuilder<HeartrateBloc, HeartrateState>(
                builder: (context, state) {
              return state.maybeMap(connected: (e) {
                return Text("${e.bpm} BPM");
              }, orElse: () {
                return Text("NO VALUE");
              });
            })
          ],
        ),
      ),
    );
  }
}
