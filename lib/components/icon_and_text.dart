import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconAndText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon
        Icon(
          icon,
          size: 18,
          color: Colors.black45,
        ),

        const SizedBox(width: 3),
        // Text
        Text(
          text,
          style: const TextStyle(
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
