import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  final int index;
  const MoviePage({super.key, required this.index});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("This is Movie Page")),
    );
  }
}
