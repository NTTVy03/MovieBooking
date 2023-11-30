import 'package:flutter/material.dart';

class TicketBox extends StatefulWidget {
  final int numberTickets;
  const TicketBox({super.key, required this.numberTickets});

  @override
  State<TicketBox> createState() => _TicketBoxState();
}

class _TicketBoxState extends State<TicketBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.movie,
          size: 24, // Set the desired size of the icon
          color: Colors.blueAccent,
        ),
        const SizedBox(width: 8), // Add some spacing between the icon and text
        Text(
          "x${widget.numberTickets}",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
