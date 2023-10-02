// ignore: file_names
// ignore_for_file: depend_on_referenced_packages, duplicate_ignore ,depend_on_referenced_packages, file_names

import 'dart:convert';

import 'package:coodehub/models/request/auth/Signup.dart';
import 'package:coodehub/models/request/auth/otp.dart';
import 'package:coodehub/models/request/auth/verify.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:http/http.dart' as https;

import 'package:coodehub/Server/config.dart';
import 'package:coodehub/models/request/auth/login.dart';

class AuthHelper {
  static var client = https.Client();

  static Future<bool> login(LoginModel model) async {
    final Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final Uri url = Uri.https(Config.apiUrl, Config.loginUrl);

    try {
      final response = await https.post(url,
          headers: requestHeaders, body: jsonEncode(model));

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<bool> signup(SignupModel model) async {
    final Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final Uri url = Uri.https(Config.apiUrl, Config.signupUrl);

    try {
      final response = await https.post(url,
          headers: requestHeaders, body: jsonEncode(model));

      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode == 422) {
        Get.snackbar(
          "Error",
          "Email already exists",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );

        return false;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<bool> sendotp(OtpModel model) async {
    final Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final Uri url = Uri.https(Config.apiUrl, Config.sendotp);

    try {
      final response = await https.post(url,
          headers: requestHeaders, body: jsonEncode(model));

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }


  static Future<bool> verify(VerifyModel model) async {
    final Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final Uri url = Uri.https(Config.apiUrl, Config.verifyotp);

    try {
      final response = await https.post(url,
          headers: requestHeaders, body: jsonEncode(model));

      if (response.statusCode == 200) {
        print(response.body);
        return true;
      } else {
         print(response.body);
        return false;
      }
    } catch (e) {
       print(e);
      return false;
    }
  }
}
