import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/state/weather_forecast_panel_state.dart';
import 'package:flutter_training/state/weather_request_state.dart';
import 'package:flutter_training/state/weather_screen_error_state.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

final weatherScreenNotifierProvider = Provider<WeatherScreenStateNotifier>(
  (ref) {
    final weatherRequestState = ref.watch(weatherRequestStateProvider);
    return WeatherScreenStateNotifier(
      ref: ref,
      weatherRequestState: weatherRequestState,
    );
  },
);

class WeatherScreenStateNotifier
    extends StateNotifier<WeatherForecastPanelState> {
  WeatherScreenStateNotifier({
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
            weatherImageName: weatherImage,
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
