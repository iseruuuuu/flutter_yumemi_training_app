import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/component/temperature_button.dart';
import 'package:flutter_training/component/temperature_item.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final _weather = YumemiWeather();
  String _weatherImage = '';
  String _minTemperature = '**';
  String _maxTemperature = '**';
  final _weatherRequest = const WeatherRequest();

  Future<void> _reloadWeather() async {
    try {
      final encodeFromJson = jsonEncode(_weatherRequest.toJson());
      final loadWeatherJson = _weather.fetchWeather(encodeFromJson);
      final decodeFromJson =
          jsonDecode(loadWeatherJson) as Map<String, dynamic>;
      final result = WeatherResult.fromJson(decodeFromJson);
      _weatherImage = result.weatherCondition.name;
      _maxTemperature = result.maxTemperature.toString();
      _minTemperature = result.minTemperature.toString();
      setState(() {});
    } on YumemiWeatherError catch (error) {
      final errorMessage = _convertYumemiWeatherError(error);
      _openErrorDialog(errorMessage);
    }
  }

  String _convertYumemiWeatherError(YumemiWeatherError error) {
    final String errorMessage;
    switch (error) {
      case YumemiWeatherError.unknown:
        errorMessage = 'unknown';
        break;
      case YumemiWeatherError.invalidParameter:
        errorMessage = 'invalidParameter';
        break;
    }
    return errorMessage;
  }

  void _openErrorDialog(String error) {
    showDialog<void>(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text('error is $error'),
          actions: [
            TextButton(
              onPressed: _onTapBack,
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _onTapBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidthSize = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          Center(
            child: SizedBox(
              width: deviceWidthSize,
              height: deviceWidthSize,
              child: _weatherImage.isNotEmpty
                  ? SvgPicture.asset('assets/images/$_weatherImage.svg')
                  : const Placeholder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: deviceWidthSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TemperatureItem(
                    textColor: Colors.blue,
                    temperature: _minTemperature,
                  ),
                  TemperatureItem(
                    textColor: Colors.red,
                    temperature: _maxTemperature,
                  ),
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
                  width: deviceWidthSize,
                  child: Row(
                    children: [
                      TemperatureButton(
                        text: 'Close',
                        onPressed: _onTapBack,
                      ),
                      TemperatureButton(
                        text: 'Reload',
                        onPressed: _reloadWeather,
                      ),
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
