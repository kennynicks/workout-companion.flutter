import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'heartrate_event.dart';
part 'heartrate_state.dart';
part 'heartrate_bloc.freezed.dart';

class HeartrateBloc extends Bloc<HeartrateEvent, HeartrateState> {
  HeartrateBloc() : super(_Initial());

  @override
  Stream<HeartrateState> mapEventToState(
    HeartrateEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
