import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerPopup extends StatefulWidget {
  final String trailerURL;
  const TrailerPopup({super.key, required this.trailerURL});

  @override
  State<TrailerPopup> createState() => _TrailerPopupState();
}

class _TrailerPopupState extends State<TrailerPopup> {
  late final YoutubePlayerController _controller;
  final String defaultID = "";

  @override
  void initState() {
    super.initState();

    String? trailerID;
    trailerID = YoutubePlayer.convertUrlToId(widget.trailerURL);

    _controller = YoutubePlayerController(
      initialVideoId: (trailerID ?? defaultID),
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
          ),
          builder: (context, player) => player,
        ),
      ),
    );
  }
}
