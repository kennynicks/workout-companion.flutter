import 'package:flutter/material.dart';
import 'package:workout_companion_flutter/injection.dart';
import 'package:workout_companion_flutter/presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(AppWidget());
}
