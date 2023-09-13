import 'package:coodehub/ui/pages/auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../pages/courses/page.dart';


class CourseDetailsTile extends StatelessWidget {
  final String courseName;
  final String instructor;
  final String schedule;
  final String imageUrl;

  const CourseDetailsTile({super.key, 
    required this.courseName,
    required this.instructor,
    required this.schedule,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[800], // Dark grey background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        title: Text(
          courseName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            Text(
              instructor,
              style: TextStyle(fontSize: 16, color: Colors.grey[300]),
            ),
            const SizedBox(height: 3),
            Text(
              'Schedule: $schedule',
              style: TextStyle(fontSize: 14, color: Colors.grey[300]),
            ),
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey[300],
        ),
        onTap: () {
          Get.to(()=>const CoursePage());
        },
        // Added an image at the bottom of the tile
        isThreeLine: true,
        dense: true,
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.school,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
