import 'package:flutter/material.dart';
import 'package:flutter_training/component/temperature_button.dart';
import 'package:flutter_training/component/temperature_item.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceWidthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          Center(
            child: SizedBox(
              width: deviceWidthSize / 2,
              height: deviceWidthSize / 2,
              child: const Placeholder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: deviceWidthSize / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  TemperatureItem(textColor: Colors.blue),
                  TemperatureItem(textColor: Colors.red),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(height: 80),
                SizedBox(
                  width: deviceWidthSize / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      TemperatureButton(text: 'Close'),
                      TemperatureButton(text: 'Reload'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
