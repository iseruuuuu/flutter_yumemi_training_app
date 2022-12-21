import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_repository_ui_state.freezed.dart';

@freezed
class WeatherRepositoryUiState with _$WeatherRepositoryUiState {
  const factory WeatherRepositoryUiState({
    @Default('') String weatherCondition,
    @Default(0) int maxTemperature,
    @Default(0) int minTemperature,
    @Default('') String errorMessage,
  }) = _WeatherRepositoryUiState;
}

final weatherRepositoryUiStateProvider =
    StateProvider<WeatherRepositoryUiState>(
  (ref) {
    return const WeatherRepositoryUiState();
  },
);
