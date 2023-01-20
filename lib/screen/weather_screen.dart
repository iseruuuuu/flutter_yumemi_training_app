import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/component/error_dialog.dart';
import 'package:flutter_training/component/temperature_button.dart';
import 'package:flutter_training/component/weather_forecast_panel.dart';
import 'package:flutter_training/notifier/weather_screen_state_notifier.dart';
import 'package:flutter_training/state/weather_screen_error_state.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceWidthSize = MediaQuery.of(context).size.width / 2;
    ref.listen<WeatherScreenErrorState>(
      weatherScreenErrorStateProvider,
      (previous, error) {
        showDialog<void>(
          context: context,
          builder: (_) {
            return ErrorDialog(errorMessage: error.errorMessage);
          },
        );
      },
    );

    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          const WeatherForecastPanel(),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(height: 80),
                SizedBox(
                  width: deviceWidthSize,
                  child: Row(
                    children: [
                      TemperatureButton(
                        text: 'Close',
                        onPressed: () => Navigator.pop(context),
                      ),
                      TemperatureButton(
                        text: 'Reload',
                        onPressed: () => ref
                            .read(weatherScreenNotifierProvider.notifier)
                            .reloadWeather(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
