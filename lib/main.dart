import 'package:deep_river_soft/src/ui/app.dart';
import 'package:deep_river_soft/src/ui/app_provider.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(AppProvider(child: App()));
}
