import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/component/temperature_item.dart';
import 'package:flutter_training/state/weather_forecast_panel_state.dart';

class WeatherForecastPanel extends ConsumerWidget {
  const WeatherForecastPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceWidthSize = MediaQuery.of(context).size.width / 2;
    final weatherForecastPanelState =
        ref.watch(weatherForecastPanelStateProvider);
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: deviceWidthSize,
            height: deviceWidthSize,
            child: weatherForecastPanelState.weatherImage.isNotEmpty
                ? SvgPicture.asset(
                    'assets/images/${weatherForecastPanelState.weatherImage}.svg',
                  )
                : const Placeholder(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SizedBox(
            width: deviceWidthSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TemperatureItem(
                  textColor: Colors.blue,
                  temperature: weatherForecastPanelState.minTemperature,
                ),
                TemperatureItem(
                  textColor: Colors.red,
                  temperature: weatherForecastPanelState.maxTemperature,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
