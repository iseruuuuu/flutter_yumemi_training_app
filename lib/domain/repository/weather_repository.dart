import 'dart:convert';

import 'package:flutter_training/constants/error_message.dart';
import 'package:flutter_training/domain/datastore/weather_datastore.dart';
import 'package:flutter_training/model/result.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_repository.g.dart';

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  final weatherDatastore = ref.watch(weatherDatastoreProvider);
  return WeatherRepository(weatherDatastore);
}

class WeatherRepository {
  const WeatherRepository(this.weatherDatastore);

  final WeatherDatastore weatherDatastore;

  Result<WeatherResult, String> getWeather(WeatherRequest weatherRequest) {
    try {
      final weather = weatherDatastore.fetchWeather(weatherRequest);
      final weatherDecode = jsonDecode(weather) as Map<String, dynamic>;
      final result = WeatherResult.fromJson(weatherDecode);
      return Result.success(result);
    } on YumemiWeatherError catch (error) {
      switch (error) {
        case YumemiWeatherError.unknown:
          return const Result.failure(ErrorMessage.invalidParameter);
        case YumemiWeatherError.invalidParameter:
          return const Result.failure(ErrorMessage.unknown);
      }
    } on Exception catch (_) {
      return const Result.failure(ErrorMessage.other);
    }
  }
}
