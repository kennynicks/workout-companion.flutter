import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

part 'pairing_event.dart';
part 'pairing_state.dart';
part 'pairing_bloc.freezed.dart';

class PairingBloc extends Bloc<PairingEvent, PairingState> {
  PairingBloc() : super(const _Initial());

  @override
  Stream<PairingState> mapEventToState(PairingEvent event) async* {
    yield* event.map(
      pairingStarted: (e) async* {
        yield PairingState.pairing(connectedServices: List.empty(), availableServices: List.empty());
      },
      availableServicesChanged: (e) async* {
        yield state.maybeMap(initial: (s) {
          return PairingState.pairing(connectedServices: List.empty(), availableServices: e.availableServices);
        }, pairing: (s) {
          return s.copyWith(availableServices: e.availableServices);
        }, orElse: () {
          return const PairingState.paired();
        });
      },
      connectedServicesChanged: (e) async* {
        yield state.map(
          initial: (s) {
            return PairingState.pairing(connectedServices: e.connectedServices, availableServices: List.empty());
          },
          pairing: (s) {
            return s.copyWith(availableServices: List.empty(), connectedServices: e.connectedServices);
          },
          paired: (s) {
            return PairingState.pairing(connectedServices: e.connectedServices, availableServices: List.empty());
          },
        );
      },
    );
  }
}
