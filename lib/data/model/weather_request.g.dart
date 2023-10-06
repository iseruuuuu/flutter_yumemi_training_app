// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, unnecessary_null_checks, require_trailing_commas, lines_longer_than_80_chars, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'weather_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherRequestImpl _$$WeatherRequestImplFromJson(Map<String, dynamic> json) =>
    _$WeatherRequestImpl(
      area: json['area'] as String? ?? 'tokyo',
      date: json['date'] as String? ?? '2020-04-01T12:00:00+09:00',
    );

Map<String, dynamic> _$$WeatherRequestImplToJson(
        _$WeatherRequestImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'date': instance.date,
    };
