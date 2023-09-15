import 'dart:ui';

import 'package:coodehub/ui/pages/auth/signup.dart';
import 'package:coodehub/ui/pages/bootcamp/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Event {
  final String title;
  final String date;

  Event({required this.title, required this.date});
}

class Bootcamp {
  final String title;
  final String duration;

  Bootcamp({required this.title, required this.duration});
}

class EventsAndBootcampsScreen extends StatelessWidget {
  final List<Event> events = [
    Event(title: "Webinar: Flutter Basics", date: "August 28, 2023"),
    Event(title: "Workshop: UI Design", date: "September 5, 2023"),
    Event(title: "Webinar: Flutter Basics", date: "August 28, 2023"),
    Event(title: "Workshop: UI Design", date: "September 5, 2023"),
  ];

  final List<Bootcamp> bootcamps = [
    Bootcamp(title: "Full Stack Bootcamp", duration: "6 weeks"),
    Bootcamp(title: "Mobile App Development", duration: "4 weeks"),
  ];

  EventsAndBootcampsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Events",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Bootcamps",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: events.length,
                        itemBuilder: (context, index) {
                          return _buildEventCard(events[index]);
                        },
                      ),
                      ListView.builder(
                        itemCount: bootcamps.length,
                        itemBuilder: (context, index) {
                          return _buildBootcampCard(bootcamps[index]);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBootcampCard(Bootcamp bootcamp) {
    return GestureDetector(
      onTap: () {
      Get.to(() => const BootCampPage());
      },
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: const NetworkImage(
                'https://c4.wallpaperflare.com/wallpaper/39/346/426/digital-art-men-city-futuristic-night-hd-wallpaper-thumb.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.srcATop,
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Paid',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Centered content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.code,
                    color: Colors.orange,
                    size: 24,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    bootcamp.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Duration: ${bootcamp.duration}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[300]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Blurred background image
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard(Event event) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: const NetworkImage(
                'https://c4.wallpaperflare.com/wallpaper/39/346/426/digital-art-men-city-futuristic-night-hd-wallpaper-thumb.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.srcATop,
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Paid',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Centered content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.code,
                    color: Colors.orange,
                    size: 24,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    event.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Duration: ${event.date}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[300]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Blurred background image
          ],
        ),
      ),
    );
  }
}
