import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_companion_flutter/injection.dart';
import 'package:workout_companion_flutter/presentation/bloc/pairing/pairing_bloc.dart';

class MySensor {
  String name;
  String id;
  MySensor({required this.name, required this.id});
}

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

Widget getListViewItem(MySensor sensor) {
  return ListTile(
    title: Text(sensor.name),
    subtitle: Text(sensor.id),
    onTap: () {},
  );
}

Widget getSensorList() {
  final List<MySensor> sensors = [
    MySensor(id: "myId", name: "myName"),
    MySensor(id: "myId3", name: "myName2"),
  ];
  return ListView(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    children: sensors.map(getListViewItem).toList(),
  );
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    "Connected",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  getSensorList(),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    "Available",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  getSensorList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
