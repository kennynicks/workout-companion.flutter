import 'package:freezed_annotation/freezed_annotation.dart';
part 'connection_state.freezed.dart';

@freezed
abstract class ConnectionState with _$ConnectionState {
  const factory ConnectionState.connected() = Connected;
  const factory ConnectionState.disconnected() = Disconnected;
}
