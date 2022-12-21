import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/state/repository/weather_repository_ui_state.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

final weatherRepositoryProvider = Provider<WeatherRepositoryNotifier>(
  (ref) {
    final weatherRequest = ref.watch(weatherRequestProvider);
    return WeatherRepositoryNotifier(
      ref: ref,
      weatherRequest: weatherRequest,
    );
  },
);

class WeatherRepositoryNotifier
    extends StateNotifier<WeatherRepositoryUiState> {
  WeatherRepositoryNotifier({
    required this.ref,
    required this.weatherRequest,
  }) : super(const WeatherRepositoryUiState());

  final Ref ref;
  final WeatherRequest weatherRequest;
  final _weather = YumemiWeather();

  Future<void> requestWeather() async {
    try {
      final encodeFromJson = jsonEncode(weatherRequest.toJson());
      final loadWeatherJson = _weather.fetchWeather(encodeFromJson);
      final decodeFromJson =
          jsonDecode(loadWeatherJson) as Map<String, dynamic>;
      final result = WeatherResult.fromJson(decodeFromJson);
      ref.read(weatherRepositoryUiStateProvider.notifier).update(
        (state) {
          return WeatherRepositoryUiState(
            weatherCondition: result.weatherCondition.name,
            maxTemperature: result.maxTemperature,
            minTemperature: result.minTemperature,
          );
        },
      );
    } on YumemiWeatherError catch (error) {
      ref.read(weatherRepositoryUiStateProvider.notifier).update(
        (state) {
          return WeatherRepositoryUiState(
            errorMessage: convertYumemiWeatherError(error),
          );
        },
      );
    }
  }

  String convertYumemiWeatherError(YumemiWeatherError error) {
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
}
