

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfig {
  static const String name = "Codehub";
  static const String version = "1.0.0";
  static  String usermail = '';

  Future<void> saveEmail(String email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('email', email);
  usermail = email;
}

  static Future<dynamic> Loader(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false, // Prevent user from dismissing the dialog
      builder: (BuildContext context) {
        return Center(
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: 1.0,
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
                width: 100.0,
                height: 100.0,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16.0),
                    Text(
                      "Loading...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

const kDark = Color(0xFF000000);
const kLight = Color(0xFFFFFFFF);
const kLightGrey = Color(0x95D1CECE);
const kDarkGrey = Color(0xFF9B9B9B);
const kOrange = Color(0xfff55631);
const kLightBlue = Color(0xff3663e3);
const kDarkBlue = Color(0xff1c153e);
const kLightPurple = Color(0xff6352c5);
const kDarkPurple = Color(0xff6352c5);
const creamcolor = Color(0xfff5f5f5);
const kGreen = Color(0xff00b894);
const kRed = Color(0xffd63031);

double hieght = 812.h;
double width = 375.w;



