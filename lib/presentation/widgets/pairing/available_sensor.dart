import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/models/sensors/sensor.dart';

class AvailableSensor extends StatefulWidget {
  final Sensor sensor;

  const AvailableSensor({required this.sensor});

  @override
  State<AvailableSensor> createState() => _AvailableSensorState();
}

class _AvailableSensorState extends State<AvailableSensor> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log("click");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getInfo(),
            getServiceIcons(),
          ],
        ),
      ),
    );
  }

  Row getServiceIcons() {
    final List<Icon> icons = widget.sensor.serviceTypes.map((serviceType) => Icon(Icons.ac_unit)).toList();
    return Row(
      children: icons,
    );
  }

  Widget getInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.sensor.name,
          style: const TextStyle(fontSize: 15),
        ),
        Text(
          widget.sensor.id,
          style: const TextStyle(color: Colors.black38),
        )
      ],
    );
  }
}
