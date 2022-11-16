import 'package:flutter/material.dart';

class TemperatureItem extends StatelessWidget {
  const TemperatureItem({
    super.key,
    required this.textColor,
  });

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: Text(
        '** ℃',
        style:
            Theme.of(context).textTheme.labelLarge?.copyWith(color: textColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
