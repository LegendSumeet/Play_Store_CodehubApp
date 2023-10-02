import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key, required this.URLL}) : super(key: key);

  final String URLL;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.URLL)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        controlsVisibleAtStart: true,
        hideControls: false,
        showLiveFullscreenButton: true,
        isLive: false,
        forceHD: true,
        enableCaption: true,
      ),
    );
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return YoutubePlayerBuilder(
            builder: (context, player) {
              return Column(
                children: [
                  player,
                ],
              );
            },
            player: YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.redAccent,
                  ),
                ),
                RemainingDuration(),
                FullScreenButton(
                  color: Colors.red,
                ),
                PlaybackSpeedButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
