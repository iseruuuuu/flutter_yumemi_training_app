import 'package:flutter/material.dart';
import 'package:flutter_training/screen/home_screen.dart';
import 'package:flutter_training/screen/weather_screen.dart';

mixin HomeMixin on State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.endOfFrame.then((_) => loadScreen());
  }

  Future<void> loadScreen() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    if (!mounted) {
      return;
    }
    await Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => const WeatherScreen(),
      ),
    );
    await loadScreen();
  }
}
