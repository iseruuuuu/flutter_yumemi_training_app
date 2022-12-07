import 'package:flutter/foundation.dart';
import 'package:flutter_training/constants/weather_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_result.freezed.dart';

part 'weather_result.g.dart';

@freezed
class WeatherResult with _$WeatherResult {
  const factory WeatherResult({
    required WeatherCondition weatherCondition,
    required int maxTemperature,
    required int minTemperature,
    required DateTime date,
  }) = _WeatherResult;

  const WeatherResult._();

  factory WeatherResult.fromJson(Map<String, dynamic> json) =>
      _$WeatherResultFromJson(json);
}
