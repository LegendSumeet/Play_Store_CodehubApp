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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomFontText(
                text: "UI AND UX ",
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              CustomFontText(
                text: "Codehub",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
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
              SizedBox(
                height: 8,
              ),
              Row(
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
              SizedBox(
                height: 8,
              ),
              Row(
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
              SizedBox(
                height: 5,
              ),
              Row(
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
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              CustomFontText(
                text: "Description",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: CustomFontText(
                    text:
                        "About Dhanvesttor: India's newest wealth management firm, Dhanvesttor is designed for women, by women. We promote women's empowerment not only through financial returns but also through co-learning experiences and community-building facilities. Our agenda is to make finance simple and understandable for all; here, no pre-required knowledge in the financial field is needed. Our team of trusted financial advisors has a deep understanding of the unique challenges and opportunities faced by women in the wealth management space. Hence, we create a safe and supportive environment where women can have free-flowing conversations with our advisors.",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomFontText(
                text: "About the internship",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: CustomFontText(
                    text:
                        "About Dhanvesttor: India's newest wealth management firm, Dhanvesttor is designed for women, by women. We promote women's empowerment not only through financial returns but also through co-learning experiences and community-building facilities. Our agenda is to make finance simple and understandable for all; here, no pre-required knowledge in the financial field is needed. Our team of trusted financial advisors has a deep understanding of the unique challenges and opportunities faced by women in the wealth management space. Hence, we create a safe and supportive environment where women can have free-flowing conversations with our advisors.",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomFontText(
                text: "Requirements",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: CustomFontText(
                    text:
                        "About Dhanvesttor: India's newest wealth management firm, Dhanvesttor is designed for women, by women. We promote women's empowerment not only through financial returns but also through co-learning experiences and community-building facilities. Our agenda is to make finance simple and understandable for all; here, no pre-required knowledge in the financial field is needed. Our team of trusted financial advisors has a deep understanding of the unique challenges and opportunities faced by women in the wealth management space. Hence, we create a safe and supportive environment where women can have free-flowing conversations with our advisors.",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomFontText(
                text: "Skill(s) required",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[700],
                ),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("data"));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
