import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cadence_event.dart';
part 'cadence_state.dart';
part 'cadence_bloc.freezed.dart';

class CadenceBloc extends Bloc<CadenceEvent, CadenceState> {
  CadenceBloc() : super(_Initial());

  @override
  Stream<CadenceState> mapEventToState(
    CadenceEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
