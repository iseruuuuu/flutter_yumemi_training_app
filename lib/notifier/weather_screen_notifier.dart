import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/constants/weather_constants.dart';
import 'package:flutter_training/gen/assets.gen.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/state/weather_forecast_panel_state.dart';
import 'package:flutter_training/state/weather_request_state.dart';
import 'package:flutter_training/state/weather_screen_error_state.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

final weatherScreenNotifierProvider = Provider<WeatherScreenNotifier>(
  (ref) {
    final weatherRequestState = ref.watch(weatherRequestStateProvider);
    return WeatherScreenNotifier(
      ref: ref,
      weatherRequestState: weatherRequestState,
    );
  },
);

class WeatherScreenNotifier extends StateNotifier<WeatherForecastPanelState> {
  WeatherScreenNotifier({
    required this.ref,
    required this.weatherRequestState,
  }) : super(const WeatherForecastPanelState());

  final Ref ref;
  final WeatherRequestState weatherRequestState;
  final _weather = YumemiWeather();

  Future<void> reloadWeather() async {
    try {
      final encodeFromJson = jsonEncode(weatherRequestState.toJson());
      final loadWeatherJson = _weather.fetchWeather(encodeFromJson);
      final decodeFromJson =
          jsonDecode(loadWeatherJson) as Map<String, dynamic>;
      final result = WeatherResult.fromJson(decodeFromJson);
      final weatherImage = result.weatherCondition;
      final maxTemperature = result.maxTemperature.toString();
      final minTemperature = result.minTemperature.toString();
      ref.read(weatherForecastPanelStateProvider.notifier).update(
        (state) {
          return WeatherForecastPanelState(
            weatherImageName: getImage(weatherImage),
            minTemperature: minTemperature,
            maxTemperature: maxTemperature,
          );
        },
      );
    } on YumemiWeatherError catch (error) {
      ref.read(weatherScreenErrorStateProvider.notifier).update((state) {
        return WeatherScreenErrorState(
          errorMessage: convertYumemiWeatherError(error),
        );
      });
    }
  }

  String getImage(WeatherCondition weatherCondition) {
    switch (weatherCondition) {
      case WeatherCondition.sunny:
        return Assets.images.sunny;
      case WeatherCondition.cloudy:
        return Assets.images.cloudy;
      case WeatherCondition.rainy:
        return Assets.images.rainy;
    }
    return '';
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
