import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/components/movie_poster.dart';
import 'package:moviebooking_21120168/pages/moviepage.dart';

class MovieCard extends StatefulWidget {
  final double width;
  final double height;
  final int id;
  final String title;
  final String duration;
  final String imgUrl;
  const MovieCard({
    super.key,
    required this.id,
    required this.title,
    required this.duration,
    required this.imgUrl,
    required this.width,
    required this.height,
  });

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoviePoster(
              height: widget.height,
              width: widget.width,
              imageUrl: widget.imgUrl,
            ),
            const SizedBox(height: 8),
            Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
            Text(
              widget.duration,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
