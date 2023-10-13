import 'package:flutter_training/constant/error_message.dart';
import 'package:flutter_training/data_source/weather_data_source.dart';
import 'package:flutter_training/model/result.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_repository.g.dart';

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  final weatherDataSource = ref.watch(weatherDataSourceProvider);
  return WeatherRepository(weatherDataSource);
}

class WeatherRepository {
  const WeatherRepository(this.weatherDataSource);

  final WeatherDataSource weatherDataSource;

  Result<WeatherResult, String> getWeather(WeatherRequest weatherRequest) {
    try {
      final weatherDecode = weatherDataSource.fetchWeather(weatherRequest);
      final result = WeatherResult.fromJson(weatherDecode);
      return Result.success(result);
    } on YumemiWeatherError catch (error) {
      switch (error) {
        case YumemiWeatherError.unknown:
          return const Result.failure(ErrorMessage.unknown);
        case YumemiWeatherError.invalidParameter:
          return const Result.failure(ErrorMessage.invalidParameter);
      }
    } on Exception catch (_) {
      return const Result.failure(ErrorMessage.other);
    }
  }
}
