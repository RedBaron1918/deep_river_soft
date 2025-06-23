import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_storage/local_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String path = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _init();
  }

  void _init() async {
    await context.read<LocalStorage>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: const CircularProgressIndicator()));
  }
}
