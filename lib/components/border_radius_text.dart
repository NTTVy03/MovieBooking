import 'package:flutter/material.dart';

class BorderRadiusText extends StatelessWidget {
  final String content;
  final double width;
  const BorderRadiusText({Key? key, required this.content, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, top: 3, bottom: 3),
        child: Text(
          content,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
