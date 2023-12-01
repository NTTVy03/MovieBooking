import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  const MoviePoster({
    super.key,
    required this.height,
    required this.width,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
