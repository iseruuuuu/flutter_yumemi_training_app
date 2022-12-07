// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherRequest _$$_WeatherRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherRequest',
      json,
      ($checkedConvert) {
        final val = _$_WeatherRequest(
          area: $checkedConvert('area', (v) => v as String? ?? 'tokyo'),
          date: $checkedConvert(
              'date', (v) => v as String? ?? '2020-04-01T12:00:00+09:00'),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_WeatherRequestToJson(_$_WeatherRequest instance) =>
    <String, dynamic>{
      'area': instance.area,
      'date': instance.date,
    };
