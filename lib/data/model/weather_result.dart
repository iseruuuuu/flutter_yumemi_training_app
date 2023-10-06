import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_result.freezed.dart';

part 'weather_result.g.dart';

enum WeatherCondition {
  none,
  sunny,
  cloudy,
  rainy,
}

@freezed
class WeatherResult with _$WeatherResult {
  @JsonSerializable(fieldRename: FieldRename.snake)
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
