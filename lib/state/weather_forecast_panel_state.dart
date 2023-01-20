import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/constants/weather_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_panel_state.freezed.dart';

@freezed
class WeatherForecastPanelState with _$WeatherForecastPanelState {
  const factory WeatherForecastPanelState({
    @Default(WeatherCondition.none) WeatherCondition weatherImageName,
    @Default('**') String maxTemperature,
    @Default('**') String minTemperature,
  }) = _WeatherForecastPanelState;
}

final weatherForecastPanelStateProvider =
    StateProvider<WeatherForecastPanelState>(
  (ref) {
    return const WeatherForecastPanelState();
  },
);
