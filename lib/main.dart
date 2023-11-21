import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supervisor/app/supervisor_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight],
  );
  runApp(const SupervisorApp());
}
