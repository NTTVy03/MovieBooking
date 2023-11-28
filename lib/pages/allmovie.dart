import 'package:flutter/material.dart';

class AllMoviePage extends StatefulWidget {
  const AllMoviePage({super.key});

  @override
  State<AllMoviePage> createState() => _AllMoviePageState();
}

class _AllMoviePageState extends State<AllMoviePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("This is All Movie Page")),
    );
  }
}
