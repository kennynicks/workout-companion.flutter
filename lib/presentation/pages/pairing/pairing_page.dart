import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:workout_companion_flutter/injection.dart';
import 'package:workout_companion_flutter/presentation/routes/app_router.gr.dart';

class PairingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageWidget();
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {}, child: const Text("Start pairing")),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
