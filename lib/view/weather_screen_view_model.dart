import 'package:flutter_training/model/result.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/repository/weather_repository.dart';
import 'package:flutter_training/view/weather_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_screen_view_model.g.dart';

@Riverpod(dependencies: [weatherRepository])
class WeatherScreenViewModel extends _$WeatherScreenViewModel {
  @override
  WeatherScreenState build({
    WeatherScreenState initState = const WeatherScreenState.initial(),
  }) {
    return initState;
  }

  Result<WeatherResult, String> reloadWeather() {
    const weatherRequest = WeatherRequest();
    final result =
        ref.read(weatherRepositoryProvider).getWeather(weatherRequest)
          ..whenOrNull(
            success: (data) {
              state = WeatherScreenState.data(
                weatherCondition: data.weatherCondition,
                maxTemperature: data.maxTemperature.toString(),
                minTemperature: data.minTemperature.toString(),
              );
            },
          );
    return result;
  }
}
