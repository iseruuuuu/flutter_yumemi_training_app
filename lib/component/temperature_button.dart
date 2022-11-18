import 'package:flutter/material.dart';

class TemperatureButton extends StatelessWidget {
  const TemperatureButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 4,
        child: TextButton(
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
