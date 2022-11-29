import 'package:flutter/material.dart';

class TemperatureItem extends StatelessWidget {
  const TemperatureItem({
    super.key,
    required this.textColor,
    required this.temperature,
  });

  final Color textColor;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: Text(
        '$temperature ℃',
        style:
        Theme.of(context).textTheme.labelLarge?.copyWith(color: textColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}

