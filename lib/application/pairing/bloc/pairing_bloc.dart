import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pairing_event.dart';
part 'pairing_state.dart';
part 'pairing_bloc.freezed.dart';

class PairingBloc extends Bloc<PairingEvent, PairingState> {
  PairingBloc() : super(const _Initial());

  @override
  Stream<PairingState> mapEventToState(
    PairingEvent event,
  ) async* {
    yield* event.map(
      pairingStarted: (e) async* {
        //TODO implement
      },
      pairingSkipped: (e) async* {
        //TODO implement
      },
    );
  }
}
