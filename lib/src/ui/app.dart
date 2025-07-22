import 'package:deep_river_soft/core/theme/app_theme.dart';
import 'package:deep_river_soft/src/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final appTheme = AppTheme().appTheme;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeepRiver Soft Betting',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.path,
      routes: {SplashScreen.path: (context) => const SplashScreen()},
    );
  }
}
