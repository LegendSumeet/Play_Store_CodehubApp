import 'package:coodehub/Server/authhelper/Authhelper.dart';
import 'package:coodehub/models/request/auth/Signup.dart';
import 'package:coodehub/models/request/auth/otp.dart';
import 'package:coodehub/models/request/auth/verify.dart';
import 'package:coodehub/ui/common/nav.dart';
import 'package:coodehub/ui/pages/auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUpNotifier extends ChangeNotifier {
  bool _isObsecure = true;

  bool get isObsecure => _isObsecure;

  set isObsecure(bool obsecure) {
    _isObsecure = obsecure;
    notifyListeners();
  }

  bool _processing = false;

  bool get processing => _processing;

  set processing(bool newValue) {
    _processing = newValue;
    notifyListeners();
  }

  bool _firstTime = false;

  bool get firstTime => _firstTime;

  set firstTime(bool newValue) {
    _firstTime = newValue;
    notifyListeners();
  }

  

  bool passwordValidator(String password) {
    if (password.isEmpty) return false;
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }


  final signupFormKey = GlobalKey<FormState>();
  bool validateAndSave() {
    final form = signupFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }


  signup(SignupModel model) {
    AuthHelper.signup(model).then((response) {
      if (response) {
        navigator!.pop();
        Get.to(() => const NavBar());
      } else if (!response) {
        navigator!.pop();
        Get.snackbar('sign in failed', 'Invalid Credentials');
      }
    }).catchError((error) {
      navigator!.pop();
      Get.snackbar('sign in failed', 'Invalid Credentials');
    });
  }


  sendotp(OtpModel model) {
    AuthHelper.sendotp(model).then((response) {
      if (response) {
        navigator!.pop();
        Get.to(() => const OtpScreen());
      } else if (!response) {
        navigator!.pop();
        Get.snackbar('Server', 'Busy');
      }
    }).catchError((error) {
      navigator!.pop();
      Get.snackbar('sign in failed', 'Invalid Credentials');
    });
  }


  verify(VerifyModel model) {
    AuthHelper.verify(model).then((response) {
      if (response) {
        navigator!.pop();
      } else if (!response) {
        navigator!.pop();
        Get.snackbar('Server', 'Busy');
      }
    }).catchError((error) {
      navigator!.pop();
      Get.snackbar('sign in failed', 'Invalid Credentials');
    });
  }
}
