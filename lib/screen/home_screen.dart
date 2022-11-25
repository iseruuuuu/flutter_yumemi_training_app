import 'package:flutter/material.dart';
import 'package:flutter_training/mixin/mixin.dart';
import 'package:flutter_training/screen/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ProcessAfterLayoutMixin {
  @override
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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green);
  }
}
