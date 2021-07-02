import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_companion_flutter/application/core/bloc/cadence/cadence_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workout_companion_flutter/application/core/bloc/fitnessmachine/fitnessmachine_bloc.dart';
import 'package:workout_companion_flutter/application/core/bloc/heartrate/heartrate_bloc.dart';

part 'pairing_event.dart';
part 'pairing_state.dart';
part 'pairing_bloc.freezed.dart';

class PairingBloc extends Bloc<PairingEvent, PairingState> {
  final CadenceBloc cadenceBloc;
  final HeartrateBloc heartrateBloc;
  final FitnessmachineBloc fitnessmachineBloc;
  late StreamSubscription cadenceSubscription;
  late StreamSubscription heartrateSubscription;
  late StreamSubscription fitnessmachineSubscription;

  PairingBloc({
    required this.cadenceBloc,
    required this.heartrateBloc,
    required this.fitnessmachineBloc,
  }) : super(const _Initial()) {
    cadenceSubscription = cadenceBloc.stream.listen((state) {
      state.maybeMap(
        connected: (_) => add(const PairingEvent.cadenceConnected()),
        disconnected: (_) => add(const PairingEvent.cadenceDisconnected()),
        orElse: () {},
      );
    });
    heartrateSubscription = heartrateBloc.stream.listen((state) {
      state.maybeMap(
        connected: (_) => add(const PairingEvent.heartrateConnected()),
        disconnected: (_) => add(const PairingEvent.heartrateDisconnected()),
        orElse: () {},
      );
    });
    fitnessmachineSubscription = fitnessmachineBloc.stream.listen((state) {
      state.maybeMap(
        connected: (_) => add(const PairingEvent.fitnessmachineConnected()),
        disconnected: (_) =>
            add(const PairingEvent.fitnessmachineDisconnected()),
        orElse: () {},
      );
    });
  }

  @override
  Stream<PairingState> mapEventToState(
    PairingEvent event,
  ) async* {
    yield* event.map(pairingStarted: (e) async* {
      //TODO implement
    }, pairingSkipped: (e) async* {
      //TODO implement
    }, cadenceConnected: (e) async* {
      yield state.maybeMap(pairing: (s) {
        if (s.fitnessmachineConnected && s.heartrateConnected) {
          return const PairingState.paired();
        } else {
          return s.copyWith(cadenceConnected: true);
        }
      }, orElse: () {
        return const PairingState.paired();
      });
    }, heartrateConnected: (e) async* {
      yield state.maybeMap(pairing: (s) {
        if (s.fitnessmachineConnected && s.cadenceConnected) {
          return const PairingState.paired();
        } else {
          return s.copyWith(heartrateConnected: true);
        }
      }, orElse: () {
        return const PairingState.paired();
      });
    }, fitnessmachineConnected: (e) async* {
      yield state.maybeMap(pairing: (s) {
        if (s.cadenceConnected && s.heartrateConnected) {
          return const PairingState.paired();
        } else {
          return s.copyWith(fitnessmachineConnected: true);
        }
      }, orElse: () {
        return const PairingState.paired();
      });
    }, cadenceDisconnected: (e) async* {
      yield state.maybeMap(pairing: (s) {
        return s.copyWith(cadenceConnected: false);
      }, orElse: () {
        return const PairingState.pairing(
          cadenceConnected: false,
          heartrateConnected: false,
          fitnessmachineConnected: false,
        );
      });
    }, heartrateDisconnected: (e) async* {
      yield state.maybeMap(pairing: (s) {
        return s.copyWith(heartrateConnected: false);
      }, orElse: () {
        return const PairingState.pairing(
          cadenceConnected: false,
          heartrateConnected: false,
          fitnessmachineConnected: false,
        );
      });
    }, fitnessmachineDisconnected: (e) async* {
      yield state.maybeMap(pairing: (s) {
        return s.copyWith(fitnessmachineConnected: false);
      }, orElse: () {
        return const PairingState.pairing(
          cadenceConnected: false,
          heartrateConnected: false,
          fitnessmachineConnected: false,
        );
      });
    });
  }
}
