import 'package:coodehub/ui/pages/courses/pagesys.dart';
import 'package:coodehub/ui/pages/courses/player.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  // Placeholder data for video sources
  final List<VideoSource> videoSources = [
    VideoSource("Video Title 1", "Video Description 1", "Video URL 1"),
    VideoSource("Video Title 2", "Video Description 2",
        "https://www.youtube.com/watch?v=BsnCpESUEqM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon:Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
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

              const CustomFontText(
                text: "LEARN ALL ABOUT FLUTTER FROM ZERO TO ADVANCE",
                color: Colors.white,
                fontSize: 25,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const CustomFontText(
                  text: "Flutter Course",
                  color: Colors.white,
                  fontSize: 20,
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: videoSources.length,
                itemBuilder: (context, index) {
                  return Card(
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
                        videoSources[index].title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        videoSources[index].description,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Get.to(()=>VideoPlayer(URLL: videoSources[index].videoUrl));
                      },
                    ),
                  );
                },
              ),
            ],
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

class CustomFontText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  const CustomFontText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}
