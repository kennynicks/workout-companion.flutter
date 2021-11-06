import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_companion_flutter/injection.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';
import 'package:workout_companion_flutter/presentation/bloc/pairing/pairing_bloc.dart';
import 'package:workout_companion_flutter/presentation/widgets/pairing/available_sensor.dart';

class PairingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PairingBloc>(),
      child: BlocListener<PairingBloc, PairingState>(
        listener: (context, state) {
          state.map(
            initial: (e) {
              log("initial");
            },
            pairing: (e) {
              log("pairing with $e");
            },
            paired: (e) {
              log("paired");
            },
          );
        },
        child: _PageWidget(),
      ),
    );
  }
}

Widget getAvailableSensors(List<Sensor> sensors) {
  return Expanded(
    child: ListView.builder(
        itemCount: sensors.length,
        itemBuilder: (context, index) {
          return AvailableSensor(sensor: sensors[index]);
        }),
  );
}

Widget getSensorList(List<Sensor> sensors, void Function(Sensor sensor) onTap) {
  return Expanded(
    child: ListView.builder(
      itemCount: sensors.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(sensors[index].name),
          subtitle: Text(sensors[index].id),
          onTap: () {
            onTap(sensors[index]);
          },
        );
      },
    ),
  );
}

class _PageWidget extends StatelessWidget {
  Widget getInitialBody(BuildContext context) {
    BlocProvider.of<PairingBloc>(context).add(const PairingEvent.pairingStarted());
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget getPairingBody(BuildContext context, List<Sensor> availableSensors, List<Sensor> connectedSensors) {
    return Column(
      children: [
        Flexible(
          child: Column(
            children: [
              const Text(
                "Connected",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
              getSensorList(connectedSensors, (sensor) {
                log("About to disconnect sensor ${sensor.id}");
                BlocProvider.of<PairingBloc>(context).add(PairingEvent.disconnectSensor(sensor: sensor));
              }),
            ],
          ),
        ),
        const Divider(),
        Flexible(
          child: Column(
            children: [
              const Text(
                "Available",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
              getAvailableSensors(availableSensors),
              // getSensorList(availableSensors, (sensor) {
              //   log("About to connect sensor ${sensor.id}");
              //   BlocProvider.of<PairingBloc>(context).add(PairingEvent.connectSensor(sensor: sensor));
              // }),
            ],
          ),
        ),
      ],
    );
  }

  Widget getPairingDone() {
    return const Text("Done");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PairingBloc, PairingState>(
          builder: (context, state) {
            return state.map(
              initial: (e) {
                return getInitialBody(context);
              },
              pairing: (e) {
                return getPairingBody(context, e.availableSensors, e.connectedSensors);
              },
              paired: (e) {
                return getPairingDone();
              },
            );
          },
        ),
      ),
    );
  }
}
