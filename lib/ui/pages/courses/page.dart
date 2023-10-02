import 'package:coodehub/ui/pages/courses/pagesys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<VideoSource> videoSources = [
      VideoSource("Video Title 1", "Video Description 1", "Video URL 1"),
      VideoSource("Video Title 2", "Video Description 2",
          "https://www.youtube.com/watch?v=BsnCpESUEqM"),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://e1.pxfuel.com/desktop-wallpaper/606/964/desktop-wallpaper-online-courses-online-learning.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "LEARN ALL ABOUT FLUTTER FROM ZERO TO ADVANCE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Flutter Course",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Videos to Watch",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: videoSources.length,
                itemBuilder: (context, index) {
                  return buildVideoCard(videoSources[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildVideoCard(VideoSource videoSource) {
    return GestureDetector(
      onTap: () {
        Get.to(() => VideoPlayer(URLL: videoSource.videoUrl));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        color: Colors.grey[800],
        child: ListTile(
          leading: const Icon(
            Icons.play_circle_outline,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            videoSource.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            videoSource.description,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class VideoSource {
  final String title;
  final String description;
  final String videoUrl;

  VideoSource(this.title, this.description, this.videoUrl);
}
