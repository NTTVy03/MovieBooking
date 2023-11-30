import 'package:flutter/material.dart';

class Payable extends StatefulWidget {
  final double payable;
  const Payable({super.key, required this.payable});

  @override
  State<Payable> createState() => _PayableState();
}

class _PayableState extends State<Payable> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 70,
          child: Text(
            "TOTAL PAYABLE:",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 70,
          child: Text(
            "\$${widget.payable}",
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
        )
      ],
    );
  }
}
