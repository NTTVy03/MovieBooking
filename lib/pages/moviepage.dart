import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/data/Globals.dart';

class MoviePage extends StatefulWidget {
  final int index;
  const MoviePage({super.key, required this.index});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  late final Map movieInfo;

  @override
  void initState() {
    super.initState();
    movieInfo = GlobalsData.getMovieInfoByIndex(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("This is Movie Page")),
    );
  }
}
