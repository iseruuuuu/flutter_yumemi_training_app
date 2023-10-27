import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_data_source.g.dart';

@Riverpod(dependencies: [])
WeatherDataSource weatherDataSource(WeatherDataSourceRef ref) {
  final yumemiWeather = YumemiWeather();
  return WeatherDataSource(yumemiWeather);
}

class WeatherDataSource {
  const WeatherDataSource(this.yumemiWeather);

  final YumemiWeather yumemiWeather;

  Future<Map<String, dynamic>> fetchWeather(
    WeatherRequest weatherRequest,
  ) async {
    final encodeWeatherRequest = jsonEncode(weatherRequest);
    final weather =
        await compute(yumemiWeather.syncFetchWeather, encodeWeatherRequest);
    final decodeData = jsonDecode(weather) as Map<String, dynamic>;
    return decodeData;
  }
}
