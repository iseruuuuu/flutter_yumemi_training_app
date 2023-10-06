import 'package:flutter_training/data/model/weather_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_screen_state.freezed.dart';

@freezed
class WeatherScreenState with _$WeatherScreenState {
  //初期状態
  const factory WeatherScreenState.initial() = WeatherScreenStateInitial;

  const factory WeatherScreenState.list({
    required WeatherCondition weatherCondition,
    required String maxTemperature,
    required String minTemperature,
  }) = WeatherScreenStateList;
}
