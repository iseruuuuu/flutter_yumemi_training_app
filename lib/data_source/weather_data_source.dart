import 'dart:convert';
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

  Map<String, dynamic> fetchWeather(WeatherRequest weatherRequest) {
    final encodeWeatherRequest = jsonEncode(weatherRequest);
    final weather = yumemiWeather.fetchWeather(encodeWeatherRequest);
    final decodeData = jsonDecode(weather) as Map<String, dynamic>;
    return decodeData;
  }
}
