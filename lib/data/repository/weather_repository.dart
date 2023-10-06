import 'dart:convert';

import 'package:flutter_training/data/api/weather_api.dart';
import 'package:flutter_training/data/model/weather_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository.g.dart';

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  final weatherApi = ref.watch(weatherApiProvider);
  return WeatherRepository(weatherApi);
}

class WeatherRepository {
  const WeatherRepository(this.weatherApi);

  final WeatherApi weatherApi;

  Map<String, dynamic> getWeather(WeatherRequest weatherRequest) {
    final weather = weatherApi.fetchWeather(weatherRequest);
    final weatherDecode = jsonDecode(weather) as Map<String, dynamic>;
    return weatherDecode;
  }
}
