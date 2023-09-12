import 'package:coodehub/ui/common/coureses.dart';
import 'package:coodehub/ui/common/slider.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',
    'https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            const SizedBox(height: 20),
            const SecondRowNav(),
            const SizedBox(height: 20),
            InternshipSliderCarousel([
              Internship(
                  title: 'Software Developer',
                  company: 'TechCorp',
                  duration: '6 months'),
              Internship(
                  title: 'Marketing Intern',
                  company: 'Media Group',
                  duration: '3 months'),
              Internship(
                  title: 'Marketing Intern',
                  company: 'Media Group',
                  duration: '3 months'),
              Internship(
                  title: 'Marketing Intern',
                  company: 'Media Group',
                  duration: '3 months'),
              // Add more internships here
            ]),
            const SizedBox(height: 20),
            const Row(
              children: [
                CustomFontText(
                  text: "Courses",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
                Spacer(),
                CustomFontText(
                  text: "See All",
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CourseDetailsTile(
              courseName: "Introduction to Flutter",
              instructor: "John Doe",
              schedule: "Mondays and Wednesdays, 4:00 PM - 6:00 PM",
              imageUrl: "https://example.com/path-to-image.png",
            ),
            const CourseDetailsTile(
              courseName: "Introduction to Flutter",
              instructor: "John Doe",
              schedule: "Mondays and Wednesdays, 4:00 PM - 6:00 PM",
              imageUrl: "https://example.com/path-to-image.png",
            ),
            const CourseDetailsTile(
              courseName: "Introduction to Flutter",
              instructor: "John Doe",
              schedule: "Mondays and Wednesdays, 4:00 PM - 6:00 PM",
              imageUrl: "https://example.com/path-to-image.png",
            ),
            const CourseDetailsTile(
              courseName: "Introduction to Flutter",
              instructor: "John Doe",
              schedule: "Mondays and Wednesdays, 4:00 PM - 6:00 PM",
              imageUrl: "https://example.com/path-to-image.png",
            )
          ],
        ),
      )),
    );
  }
}

class SecondRowNav extends StatelessWidget {
  const SecondRowNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFontText(
              text: "UpComing Events",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            CustomFontText(
              text: "Never Miss Out",
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.grey,
            ),
          ],
        ),
        
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
                border: const BorderDirectional(),

        color: Colors.grey[800],
        
        borderRadius:  BorderRadius.circular(36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg'),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.grey[300],
                    ),
                  ),
                  const Text(
                    "John Doe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Handle notifications action
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle settings action
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
