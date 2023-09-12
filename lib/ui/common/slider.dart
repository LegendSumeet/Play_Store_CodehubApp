
import 'package:carousel_slider/carousel_slider.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:coodehub/ui/pages/auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Internship {
  final String title;
  final String company;
  final String duration;

  Internship(
      {required this.title, required this.company, required this.duration});
}

class InternshipSliderCarousel extends StatefulWidget {
  final List<Internship> internships;

  const InternshipSliderCarousel(this.internships, {Key? key})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InternshipSliderCarouselState createState() =>
      _InternshipSliderCarouselState();
}

class _InternshipSliderCarouselState extends State<InternshipSliderCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(() => const OtpScreen());
          },
          child: SizedBox(
            width: screenWidth,
            child: CarouselSlider.builder(
              itemCount: widget.internships.length,
              itemBuilder: (context, index, realIndex) {
                final internship = widget.internships[index];
                return Container(
                  width: screenWidth * 0.8,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          spreadRadius: 2.0),
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFontText(
                        text: internship.title,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        internship.company,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Duration: ${internship.duration}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                initialPage: 0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.internships.length,
            (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.blue
                    : Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
