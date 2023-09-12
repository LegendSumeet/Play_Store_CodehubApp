import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

class YoutubeVideo extends StatefulWidget {
  String youtubeUrl;

  YoutubeVideo(this.youtubeUrl, {super.key});

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;
  late String videoId;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.youtubeUrl)!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        controlsVisibleAtStart: true,
        hideControls: false,
        showLiveFullscreenButton: true,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      // You can add any necessary logic here
    }
  }

  @override
  void deactivate() {
    /// Pauses video while navigating to the next page.
    if (_controller.value.isPlaying) {
      _controller.pause();
    }
    super.deactivate();
  }

  @override
  void dispose() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    }
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 200,
      color: Colors.blue,
      child: VisibilityDetector(
        key: const Key("unique key"),
        onVisibilityChanged: (info) {
          if (info.visibleFraction == 0) {
            _controller.pause();
          } else {
            _controller.value.isPlaying
                ? _controller.play()
                : _controller.pause();
          }
        },
        child: YoutubePlayerBuilder(
          onExitFullScreen: () {
            /// After leaving fullscreen, the player forces portraitUp. The behaviour is overridden by this.
            SystemChrome.setPreferredOrientations(DeviceOrientation.values);
          },
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            topActions: <Widget>[
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  _controller.metadata.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
            onReady: () {
              _isPlayerReady = true;
              _controller.addListener(listener);
            },
            onEnded: (data) {},
          ),
          builder: (context, player) => Scaffold(
            key: _scaffoldKey,
            body: ListView(
              children: [
                player,
              ],
            ),
          ),
        ),
      ),
    );
  }
}