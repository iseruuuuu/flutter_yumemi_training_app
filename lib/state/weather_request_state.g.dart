// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'weather_request_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherRequestState _$$_WeatherRequestStateFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherRequestState(
      area: json['area'] as String? ?? 'tokyo',
      date: json['date'] as String? ?? '2020-04-01T12:00:00+09:00',
    );

Map<String, dynamic> _$$_WeatherRequestStateToJson(
        _$_WeatherRequestState instance) =>
    <String, dynamic>{
      'area': instance.area,
      'date': instance.date,
    };
