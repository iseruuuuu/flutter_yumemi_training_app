import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_data_source.g.dart';

@riverpod
WeatherDataSource weatherDataSource(WeatherDataSourceRef ref) {
  final yumemiWeather = YumemiWeather();
  return WeatherDataSource(yumemiWeather);
}

class WeatherDataSource {
  const WeatherDataSource(this.yumemiWeather);

  final YumemiWeather yumemiWeather;

  Map<String, dynamic> fetchWeather(WeatherRequest weatherRequest) {
    final encodeWeatherRequest = encode(weatherRequest);
    final weather = yumemiWeather.fetchWeather(encodeWeatherRequest);
    final decodeData = decode(weather);
    return decodeData;
  }

  @visibleForTesting
  String encode(WeatherRequest weatherRequest) {
    return jsonEncode(weatherRequest);
  }

  @visibleForTesting
  Map<String, dynamic> decode(String weather) {
    return jsonDecode(weather) as Map<String, dynamic>;
  }
}
