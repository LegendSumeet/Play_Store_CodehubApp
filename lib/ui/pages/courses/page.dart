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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: ListView(
            children: [
              // Banner Section
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://e1.pxfuel.com/desktop-wallpaper/606/964/desktop-wallpaper-online-courses-online-learning.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "LEARN ALL ABOUT FLUTTER FROM ZERO TO ADVANCE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Flutter Course",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Videos to Watch",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // Improved Video List
              Column(
                children: videoSources
                    .asMap()
                    .entries
                    .map(
                      (entry) => buildVideoCard(entry.value, entry.key),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVideoCard(VideoSource videoSource, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(() => VideoPlayer(URLL: videoSource.videoUrl));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        margin: const EdgeInsets.symmetric(vertical: 10),
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
