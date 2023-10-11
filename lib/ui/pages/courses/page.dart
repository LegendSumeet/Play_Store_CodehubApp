import 'package:coodehub/ui/common/textwith.dart';
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
      // Add more video sources here
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: null,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "LEARN ALL ABOUT FLUTTER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(8),
                child: CustomFontText(
                  text: "afafafa" * 20,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Instructor:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Videos to Watch",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: videoSources.length,
              itemBuilder: (context, index) {
                return buildVideoCard(videoSources[index]);
              },
            ),
            SizedBox(
              height: 100,
            )
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
        color: Colors.grey[200],
        child: ListTile(
          leading: const Icon(
            Icons.play_circle_outline,
            color: Colors.blue,
            size: 35,
          ),
          title: Text(
            videoSource.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            videoSource.description,
            style: const TextStyle(
              color: Colors.black,
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
