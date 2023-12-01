import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorSeatstateWithText extends StatelessWidget {
  final String svgName;
  final String text;

  const ColorSeatstateWithText({
    Key? key,
    required this.text,
    required this.svgName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          svgName,
          width: 20,
          height: 20,
        ),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
