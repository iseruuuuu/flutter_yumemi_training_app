import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_request.freezed.dart';

part 'weather_request.g.dart';

@freezed
class WeatherRequest with _$WeatherRequest {
  const factory WeatherRequest({
    @Default('tokyo') String area,
    @Default('2020-04-01T12:00:00+09:00') String date,
  }) = _WeatherRequest;

  const WeatherRequest._();

  factory WeatherRequest.fromJson(Map<String, dynamic> json) =>
      _$WeatherRequestFromJson(json);
}

final weatherRequestProvider = StateProvider<WeatherRequest>(
  (ref) {
    return const WeatherRequest();
  },
);
