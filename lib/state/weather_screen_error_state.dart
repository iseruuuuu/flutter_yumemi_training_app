import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_screen_error_state.freezed.dart';

@freezed
class WeatherScreenErrorState with _$WeatherScreenErrorState {
  const factory WeatherScreenErrorState({
    @Default('') String errorMessage,
  }) = _WeatherScreenErrorState;
}

final weatherScreenErrorStateProvider = StateProvider<WeatherScreenErrorState>(
  (ref) {
    return const WeatherScreenErrorState();
  },
);
