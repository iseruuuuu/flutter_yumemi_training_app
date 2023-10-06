import 'package:flutter_training/common/constants/error_message.dart';
import 'package:flutter_training/data/model/result.dart';
import 'package:flutter_training/data/model/weather_request.dart';
import 'package:flutter_training/data/model/weather_result.dart';
import 'package:flutter_training/data/repository/weather_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_usecase.g.dart';

@riverpod
WeatherUsecase weatherUsecase(WeatherUsecaseRef ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return WeatherUsecase(repository);
}

class WeatherUsecase {
  const WeatherUsecase(this.weatherRepository);

  final WeatherRepository weatherRepository;

  //WeatherResult・・・成功時の値
  //String・・・失敗した時の値
  Result<WeatherResult, String> getWeather(WeatherRequest weatherRequest) {
    try {
      final data = weatherRepository.getWeather(weatherRequest);
      //Map<String, dynamic>からWeatherResultの変換
      final result = WeatherResult.fromJson(data);
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
