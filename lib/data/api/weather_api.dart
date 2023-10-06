import 'dart:convert';
import 'package:flutter_training/data/model/weather_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_api.g.dart';

@riverpod
WeatherApi weatherApi(WeatherApiRef ref) {
  final yumemiWeather = YumemiWeather();
  return WeatherApi(yumemiWeather);
}

class WeatherApi {
  const WeatherApi(this.yumemiWeather);

  final YumemiWeather yumemiWeather;

  //DB（データベース）にアクセスして必要なデータを取って来る

  String fetchWeather(WeatherRequest weatherRequest) {
    final encodeWeatherRequest = jsonEncode(weatherRequest);
    final weather = yumemiWeather.fetchWeather(encodeWeatherRequest);
    return weather;
  }
}
