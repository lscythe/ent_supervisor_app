import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supervisor/app/supervisor_app.dart';
import 'package:supervisor/locator/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight],
  );

  await configureDependencies();

  runApp(const SupervisorApp());
}
