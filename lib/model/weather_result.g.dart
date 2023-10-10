// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, lines_longer_than_80_chars, unnecessary_null_checks, require_trailing_commas

part of 'weather_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResultImpl _$$WeatherResultImplFromJson(Map<String, dynamic> json) =>
    _$WeatherResultImpl(
      weatherCondition:
          $enumDecode(_$WeatherConditionEnumMap, json['weather_condition']),
      maxTemperature: json['max_temperature'] as int,
      minTemperature: json['min_temperature'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$WeatherResultImplToJson(_$WeatherResultImpl instance) =>
    <String, dynamic>{
      'weather_condition':
          _$WeatherConditionEnumMap[instance.weatherCondition]!,
      'max_temperature': instance.maxTemperature,
      'min_temperature': instance.minTemperature,
      'date': instance.date.toIso8601String(),
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.none: 'none',
  WeatherCondition.sunny: 'sunny',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.rainy: 'rainy',
};
