import 'package:deep_river_soft/src/service_locator.dart';
import 'package:deep_river_soft/src/ui/app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  runApp(App());
}
