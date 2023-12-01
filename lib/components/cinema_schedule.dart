import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/components/time.dart';

class CinemaSchedule extends StatefulWidget {
  final String cinema;
  final List<Map> schedule;
  const CinemaSchedule({
    super.key,
    required this.cinema,
    required this.schedule,
  });

  @override
  State<CinemaSchedule> createState() => _CinemaScheduleState();
}

class _CinemaScheduleState extends State<CinemaSchedule> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.cinema,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.schedule.length,
              itemBuilder: (context, index) => TimeBlock(
                onTap: onTapTime,
                id: widget.schedule[index]['id'],
                time: widget.schedule[index]['time'],
                status: widget.schedule[index]['status'],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapTime() {}
}
