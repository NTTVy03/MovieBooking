import 'package:flutter/material.dart';

class TimeBlock extends StatefulWidget {
  final int id;
  final String time;
  final int status; // -1: invalid; 0: available; 1: selected
  final void Function()? onTap;

  const TimeBlock({
    super.key,
    required this.onTap,
    required this.id,
    required this.time,
    required this.status,
  });

  @override
  State<TimeBlock> createState() => _TimeBlockState();
}

class _TimeBlockState extends State<TimeBlock> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 90,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          decoration: BoxDecoration(
            color: widget.status == -1 ? Colors.grey : Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              width: 2,
              color: widget.status == 1
                  ? Colors.blue
                  : (widget.status == -1 ? Colors.grey : Colors.black26),
            ),
          ),
          child: Text(
            widget.time,
            style: TextStyle(
              fontSize: 14,
              fontWeight:
                  widget.status == 1 ? FontWeight.w700 : FontWeight.w500,
              color: widget.status == 1
                  ? Colors.black
                  : (widget.status == -1 ? Colors.black26 : Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
