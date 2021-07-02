part of 'fitnessmachine_bloc.dart';

@freezed
class FitnessmachineState with _$FitnessmachineState {
  const factory FitnessmachineState.initial() = _Initial;
  const factory FitnessmachineState.disconnected() = _Disconnected;
  const factory FitnessmachineState.searching() = _Searching;
  const factory FitnessmachineState.connected() = _Connected;
}
