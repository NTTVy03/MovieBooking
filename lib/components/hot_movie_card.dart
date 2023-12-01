import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/components/movie_poster.dart';
import 'package:moviebooking_21120168/pages/moviepage.dart';

class HotMovieCard extends StatefulWidget {
  final double width;
  final double height;
  final int id;
  final String imgUrl;
  const HotMovieCard({
    super.key,
    required this.id,
    required this.imgUrl,
    required this.width,
    required this.height,
  });

  @override
  State<HotMovieCard> createState() => _HotMovieCardState();
}

class _HotMovieCardState extends State<HotMovieCard> {
  void onMovieCardTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MoviePage(
          index: widget.id,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onMovieCardTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MoviePoster(
          height: widget.height,
          width: widget.width,
          imageUrl: widget.imgUrl,
        ),
      ),
    );
  }
}
