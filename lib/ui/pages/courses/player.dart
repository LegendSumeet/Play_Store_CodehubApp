import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideo extends StatefulWidget {
  final String youtubeUrl;

  YoutubeVideo(this.youtubeUrl, {Key? key}) : super(key: key);

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.youtubeUrl)!,
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _enterFullScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(

            body: Center(
              child: YoutubePlayerBuilder(
                builder: (context, player) {
                  return player;
                },
                player: YoutubePlayer(
                  controller: _controller,
                  aspectRatio: 16 / 9, // Adjust the aspect ratio here
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
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      builder: (context, player) {
        return Column(
          children: [
            player,
            ElevatedButton(
              onPressed: _enterFullScreen,
              child: Text('Fullscreen'),
            ),
          ],
        );
      },
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        aspectRatio: 16 / 9, // Adjust the aspect ratio here
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
  }
}
