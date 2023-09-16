import 'package:coodehub/constants/app_constants.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class INternPage extends StatefulWidget {
  const INternPage({super.key});

  @override
  State<INternPage> createState() => _INternPageState();
}

class _INternPageState extends State<INternPage> {
  List<String> skills = [
    "Flutter",
    "Dart",
    "React",
    "JavaScript",
    "UI/UX Design",
    "Firebase",
    "Git",
  ];

  List<String> perks = [
    "Flutter",
    "Dart",
    "React",
    "JavaScript",
    "UI/UX Design",
    "Firebase",
    "Git",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          width: width,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Center(
              child: CustomFontText(
                text: "Apply Now",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: const CustomFontText(
            text: "Internships Details",
            color: Colors.white,
            fontSize: 20,
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const CustomFontText(
              text: "UI AND UX ",
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            const CustomFontText(
              text: "Codehub",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomFontText(
                  text: "Remote",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Icon(
                  CupertinoIcons.play_circle_fill,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomFontText(
                  text: "Start Now",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.calendar,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomFontText(
                  text: "6 Months",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Icon(
                  Icons.money,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomFontText(
                  text: "10,0000",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                Spacer(),
                Icon(
                  Icons.timeline,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomFontText(
                  text: "30 May 2023",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomFontText(
                  text: "PART TIME ",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomFontText(
              text: "Description",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CustomFontText(
                  text:
                      "About Dhanvesttor: India's newest wealth management firm, Dhanvesttor is designed for women, by women. We promote women's empowerment not only through financial returns but also through co-learning experiences and community-building facilities. Our agenda is to make finance simple and understandable for all; here, no pre-required knowledge in the financial field is needed. Our team of trusted financial advisors has a deep understanding of the unique challenges and opportunities faced by women in the wealth management space. Hence, we create a safe and supportive environment where women can have free-flowing conversations with our advisors.",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomFontText(
              text: "About the internship",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CustomFontText(
                  text:
                      "About Dhanvesttor: India's newest wealth management firm, Dhanvesttor is designed for women, by women. We promote women's empowerment not only through financial returns but also through co-learning experiences and community-building facilities. Our agenda is to make finance simple and understandable for all; here, no pre-required knowledge in the financial field is needed. Our team of trusted financial advisors has a deep understanding of the unique challenges and opportunities faced by women in the wealth management space. Hence, we create a safe and supportive environment where women can have free-flowing conversations with our advisors.",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomFontText(
              text: "Requirements",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CustomFontText(
                  text:
                      "About Dhanvesttor: India's newest wealth management firm, Dhanvesttor is designed for women, by women. We promote women's empowerment not only through financial returns but also through co-learning experiences and community-building facilities. Our agenda is to make finance simple and understandable for all; here, no pre-required knowledge in the financial field is needed. Our team of trusted financial advisors has a deep understanding of the unique challenges and opportunities faced by women in the wealth management space. Hence, we create a safe and supportive environment where women can have free-flowing conversations with our advisors.",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomFontText(
              text: "Skill(s) required",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            SkillSetContainer(skills: skills),
            const SizedBox(
              height: 10,
            ),
            const CustomFontText(
              text: "Perks",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            SkillSetContainer(skills: perks),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillSetContainer extends StatelessWidget {
  final List<String> skills;

  const SkillSetContainer({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Wrap(
        spacing: 8.0, // Space between the skill items
        runSpacing: 8.0, // Space between rows of skill items
        children: skills.map((skill) => SkillItem(skill: skill)).toList(),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;

  const SkillItem({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius:
            BorderRadius.circular(20.0), // Adjust the border radius as needed
      ),
      child: Text(
        skill,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
