part of 'heartrate_bloc.dart';

@freezed
class HeartrateState with _$HeartrateState {
  const factory HeartrateState.initial() = _Initial;
  const factory HeartrateState.disconnected() = _Disconnected;
  const factory HeartrateState.searching() = _Searching;
  const factory HeartrateState.connected() = _Connected;
}
