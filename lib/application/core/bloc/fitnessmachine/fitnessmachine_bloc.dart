import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitnessmachine_event.dart';
part 'fitnessmachine_state.dart';
part 'fitnessmachine_bloc.freezed.dart';

class FitnessmachineBloc
    extends Bloc<FitnessmachineEvent, FitnessmachineState> {
  FitnessmachineBloc() : super(const _Initial());

  @override
  Stream<FitnessmachineState> mapEventToState(
    FitnessmachineEvent event,
  ) async* {
    yield* event.map(
      searchStarted: (e) async* {
        //TODO implement
      },
      searchStopped: (e) async* {
        //TODO implement
      },
      invokedDisconnect: (e) async* {
        //TODO implement
      },
      invokedPairing: (e) async* {
        //TODO implement
      },
      valueTransmitted: (e) async* {
        yield FitnessmachineState.connected(e.watt);
      },
    );
  }
}
