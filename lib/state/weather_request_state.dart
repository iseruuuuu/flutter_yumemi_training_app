import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_request_state.freezed.dart';

part 'weather_request_state.g.dart';

@freezed
class WeatherRequestState with _$WeatherRequestState {
  const factory WeatherRequestState({
    @Default('tokyo') String area,
    @Default('2020-04-01T12:00:00+09:00') String date,
  }) = _WeatherRequestState;

  const WeatherRequestState._();

  factory WeatherRequestState.fromJson(Map<String, dynamic> json) =>
      _$WeatherRequestStateFromJson(json);
}

final weatherRequestStateProvider = StateProvider<WeatherRequestState>(
  (ref) {
    return const WeatherRequestState();
  },
);
