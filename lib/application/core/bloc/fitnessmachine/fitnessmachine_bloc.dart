import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitnessmachine_event.dart';
part 'fitnessmachine_state.dart';
part 'fitnessmachine_bloc.freezed.dart';

class FitnessmachineBloc extends Bloc<FitnessmachineEvent, FitnessmachineState> {
  FitnessmachineBloc() : super(_Initial());

  @override
  Stream<FitnessmachineState> mapEventToState(
    FitnessmachineEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
