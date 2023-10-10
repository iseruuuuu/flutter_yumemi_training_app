import 'package:flutter/material.dart';
import 'package:flutter_training/domain/repository/weather_repository.dart';
import 'package:flutter_training/model/weather_request.dart';
import 'package:flutter_training/screen/weather_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_screen_view_model.g.dart';

@riverpod
class WeatherScreenViewModel extends _$WeatherScreenViewModel {
  @override
  WeatherScreenState build({
    WeatherScreenState initState = const WeatherScreenState.initial(),
  }) {
    return initState;
  }

  void reloadWeather(BuildContext context) {
    const weatherRequest = WeatherRequest();
    ref.read(weatherRepositoryProvider).getWeather(weatherRequest).map(
      success: (list) {
        state = WeatherScreenState.data(
          weatherCondition: list.value.weatherCondition,
          maxTemperature: list.value.maxTemperature.toString(),
          minTemperature: list.value.minTemperature.toString(),
        );
      },
      failure: (error) {
        /// 失敗したとしてもエラーDialogを出すだけで、stateの状態を更新しない。
        _openErrorDialog(error.error, context);
      },
    );
  }

  void _openErrorDialog(String error, BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(error),
          actions: [
            TextButton(
              onPressed: Navigator.of(context).pop,
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
