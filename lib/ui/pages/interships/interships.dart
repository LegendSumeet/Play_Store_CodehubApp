import 'package:coodehub/constants/app_constants.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:coodehub/ui/pages/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Internship {
  final String title;
  final String company;
  final String duration;

  Internship(
      {required this.title, required this.company, required this.duration});
}

class InternshipsPage extends StatefulWidget {
  const InternshipsPage({super.key});

  @override
  State<InternshipsPage> createState() => _InternshipsPageState();
}

class _InternshipsPageState extends State<InternshipsPage> {
  final List<Internship> internships = [
    Internship(
        title: "Software Developer Intern",
        company: "TechCorp Inc.",
        duration: "May 2023 - August 2023"),
    Internship(
        title: "UI/UX Design Intern",
        company: "DesignCo",
        duration: "June 2023 - September 2023"),
    Internship(
        title: "Marketing Intern",
        company: "Media Group",
        duration: "June 2023 - September 2023"),
    Internship(
        title: "Software Developer Intern",
        company: "TechCorp Inc.",
        duration: "May 2023 - August 2023"),
    Internship(
        title: "UI/UX Design Intern",
        company: "DesignCo",
        duration: "June 2023 - September 2023"),
    Internship(
        title: "Marketing Intern",
        company: "Media Group",
        duration: "June 2023 - September 2023"),
    Internship(
        title: "Software Developer Intern",
        company: "TechCorp Inc.",
        duration: "May 2023 - August 2023"),
    Internship(
        title: "UI/UX Design Intern",
        company: "DesignCo",
        duration: "June 2023 - September 2023"),
    Internship(
        title: "Marketing Intern",
        company: "Media Group",
        duration: "June 2023 - September 2023"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const CustomFontText(
            text: "Internships",
            color: Colors.white,
            fontSize: 28,
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                    onTap: () {
                      Get.to(() => const SignUp());
                    },
                    child: Container(
                      height: 50,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: CustomFontText(
                          text: "Search For Internships",
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFilterButton("Today"),
                  _buildFilterButton("Yesterday"),
                  _buildFilterButton("This Week"),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: internships.length,
                  itemBuilder: (context, index) {
                    final internship = internships[index];
                    return intershipsCard(internship: internship);
                  },
                ),
              ),
            ],
          ),
        ));
  }

  InkWell _buildFilterButton(String text) {
    return InkWell(
      onTap: () {
        Get.to(() => const SignUp());
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: CustomFontText(
              text: text,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class intershipsCard extends StatelessWidget {
  const intershipsCard({
    super.key,
    required this.internship,
  });

  final Internship internship;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 10),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                title: Text(
                  internship.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 6),
                      CustomFontText(
                        text: internship.company,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[300]),
                      ),
                      const SizedBox(height: 3),
                      CustomFontText(
                          text:
                              'Duration: ${internship.duration}',
                          fontSize: 14,
                          color: Colors.white),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomFontText(
                        text: "Stipend 1000",
                        fontSize: 15,
                        color: Colors.white,
                      )
                    ]),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.grey[300],
                ),
                onTap: () {}),
          )),
    );
  }
}
