import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_panel_state.freezed.dart';

@freezed
class WeatherForecastPanelState with _$WeatherForecastPanelState {
  const factory WeatherForecastPanelState({
    @Default('') String weatherImageName,
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
