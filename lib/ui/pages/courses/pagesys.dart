import 'package:coodehub/constants/app_constants.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                YoutubeVideo(widget.URLL),
              ],
            ),
          ),
        ));
  }
}
