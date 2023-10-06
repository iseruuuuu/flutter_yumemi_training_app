import 'package:flutter/cupertino.dart';
import 'package:flutter_training/data/model/weather_request.dart';
import 'package:flutter_training/data/usecase/weather_usecase.dart';
import 'package:flutter_training/ui/weather/weather_screen_state.dart';
import 'package:flutter_training/utils/weather_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_screen_view_model.g.dart';

@riverpod
class WeatherScreenViewModel extends _$WeatherScreenViewModel {
  @override
  WeatherScreenState build({
    WeatherScreenState initState = const WeatherScreenState.empty(),
  }) {
    return initState;
  }

  void reloadWeather(BuildContext context) {
    const weatherRequest = WeatherRequest();
    ref.read(weatherUsecaseProvider).getWeather(weatherRequest).map(
      success: (list) {
        state = WeatherScreenState.list(
          weatherCondition: list.value.weatherCondition,
          maxTemperature: list.value.maxTemperature.toString(),
          minTemperature: list.value.minTemperature.toString(),
        );
      },
      failure: (error) {
        //失敗したとしてもエラーDialogを出すだけで、stateの状態を更新しない。
        WeatherUtils().openErrorDialog(error.error, context);
      },
    );
  }
}
