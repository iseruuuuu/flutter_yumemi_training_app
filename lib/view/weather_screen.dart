import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/component/temperature_button.dart';
import 'package:flutter_training/component/temperature_item.dart';
import 'package:flutter_training/constant/weather_condition.dart';
import 'package:flutter_training/view/weather_screen_view_model.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(weatherScreenViewModelProvider());
    final (
      weatherCondition,
      maxTemperaure,
      minTemperacture,
    ) = state.when(
      initial: () => (WeatherCondition.none, '**', '**'),
      data: (weather, max, min) => (weather, max, min),
    );
    return Scaffold(
      body: _WeatherBody(
        weatherCondition: weatherCondition,
        maxTemperature: maxTemperaure,
        minTemperature: minTemperacture,
      ),
    );
  }
}

class _WeatherBody extends ConsumerWidget {
  const _WeatherBody({
    required this.weatherCondition,
    required this.maxTemperature,
    required this.minTemperature,
  });

  final WeatherCondition weatherCondition;
  final String maxTemperature;
  final String minTemperature;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceWidthSize = MediaQuery.of(context).size.width / 2;
    return Column(
      children: [
        const Spacer(flex: 2),
        Center(
          child: SizedBox(
            width: deviceWidthSize,
            height: deviceWidthSize,
            child: weatherCondition != WeatherCondition.none
                ? SvgPicture.asset('assets/images/${weatherCondition.name}.svg')
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
                  temperature: maxTemperature,
                ),
                TemperatureItem(
                  textColor: Colors.red,
                  temperature: minTemperature,
                ),
              ],
            ),
          ),
        ),
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
                      onPressed: () async {
                        _openLoadingDialog(context);
                        final result = await ref
                            .read(
                              weatherScreenViewModelProvider().notifier,
                            )
                            .reloadWeather();
                        result.whenOrNull(
                          failure: (error) {
                            _openErrorDialog(error, context);
                          },
                          success: (_) {
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void _openErrorDialog(String error, BuildContext context) {
  Navigator.of(context).pop();
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

void _openLoadingDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}
