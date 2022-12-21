import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/state/forecast_panel/weather_forecast_panel_state.dart';
import 'package:flutter_training/state/repository/weather_repository_notifier.dart';
import 'package:flutter_training/state/repository/weather_repository_ui_state.dart';
import 'package:flutter_training/state/weather_screen_error_state.dart';

final weatherScreenNotifierProvider = Provider<WeatherScreenNotifier>(
  (ref) {
    final weatherRepository = ref.watch(weatherRepositoryProvider);
    return WeatherScreenNotifier(
      ref: ref,
      repositoryNotifier: weatherRepository,
    );
  },
);

class WeatherScreenNotifier extends StateNotifier<WeatherForecastPanelState> {
  WeatherScreenNotifier({
    required this.ref,
    required this.repositoryNotifier,
  }) : super(const WeatherForecastPanelState());

  final Ref ref;
  final WeatherRepositoryNotifier repositoryNotifier;

  Future<void> reloadWeather() async {
    await repositoryNotifier.requestWeather();
    final repositoryUiState = ref.read(weatherRepositoryUiStateProvider);
    if (repositoryUiState.errorMessage == '') {
      final weatherImage = repositoryUiState.weatherCondition;
      final maxTemperature = repositoryUiState.maxTemperature.toString();
      final minTemperature = repositoryUiState.minTemperature.toString();
      ref.watch(weatherForecastPanelStateProvider.notifier).update(
        (state) {
          return WeatherForecastPanelState(
            weatherImage: weatherImage,
            minTemperature: minTemperature,
            maxTemperature: maxTemperature,
          );
        },
      );
    } else {
      ref.watch(weatherScreenErrorProvider.notifier).update(
        (state) {
          return WeatherScreenErrorState(
            errorMessage: repositoryUiState.errorMessage,
          );
        },
      );
    }
  }
}
