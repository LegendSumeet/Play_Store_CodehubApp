import 'package:flutter/material.dart';

import 'player.dart';

class VideoPlayer extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const VideoPlayer({Key? key, required this.URLL}) : super(key: key);

  final String URLL;

  @override
  State<VideoPlayer> createState() => _VideoPagyerState();
}

class _VideoPagyerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                YoutubeVideo(widget.URLL),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (ctx, i) {
                      return ListTile(
                        title: Text("Item $i"),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
