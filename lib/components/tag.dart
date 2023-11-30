import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tag;
  const Tag({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200], // Set the background color
          borderRadius:
              BorderRadius.circular(20.0), // Adjust the border radius as needed
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 5.0, vertical: 2.0), // Adjust the padding as needed
        child: Text(
          tag,
          style: const TextStyle(
              color: Colors.black54, fontSize: 10, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
