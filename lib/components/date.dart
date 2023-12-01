import 'package:flutter/material.dart';

class DateBlock extends StatefulWidget {
  final int id;
  final String order;
  final String date;
  final bool isSelected;
  final void Function()? onTap;

  const DateBlock({
    super.key,
    required this.order,
    required this.date,
    required this.isSelected,
    required this.onTap,
    required this.id,
  });

  @override
  State<DateBlock> createState() => _DateBlockState();
}

class _DateBlockState extends State<DateBlock> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 70,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              width: 2,
              color: widget.isSelected ? Colors.blue : Colors.black26,
            ),
          ),
          child: Column(
            children: [
              Text(
                widget.order,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: widget.isSelected ? Colors.black : Colors.black26),
              ),
              Text(
                widget.date,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: widget.isSelected ? Colors.black : Colors.black26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
