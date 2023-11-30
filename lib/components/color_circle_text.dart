import 'package:flutter/material.dart';

class ColorCircleWithText extends StatelessWidget {
  final Color color;
  final String text;

  const ColorCircleWithText({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }
}
