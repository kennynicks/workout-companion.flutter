import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cadence_event.dart';
part 'cadence_state.dart';
part 'cadence_bloc.freezed.dart';

@singleton
class CadenceBloc extends Bloc<CadenceEvent, CadenceState> {
  CadenceBloc() : super(const _Initial());

  @override
  Stream<CadenceState> mapEventToState(
    CadenceEvent event,
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
        yield CadenceState.connected(e.cadence);
      },
    );
  }
}
