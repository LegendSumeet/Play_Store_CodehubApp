
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginNotifier extends ChangeNotifier {
  bool _obscureText = true;
  bool get obscureText => _obscureText;
  set obscureText(bool newState) {
    _obscureText = newState;
    notifyListeners();
  }

  bool _firsttime = true;
  bool get firsttime => _firsttime;
  set firsttime(bool newState) {
    _firsttime = newState;
    notifyListeners();
  }

  bool _slotsadded = false;
  bool get slotsadded => _slotsadded;
  set slotsadded(bool newState) {
    _slotsadded = newState;
    notifyListeners();
  }

  bool? _entrypoint;
  bool get entrypoint => _entrypoint ?? false;
  set entrypoint(bool newState) {
    _entrypoint = newState;
    notifyListeners();
  }

  bool? _isLogged;
  bool get isLogged => _isLogged ?? false;
  set isLogged(bool newState) {
    _isLogged = newState;
    notifyListeners();
  }

  getprefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _entrypoint = prefs.getBool('entrypoint') ?? false;
    _isLogged = prefs.getBool('isLogged') ?? false;
  }

  final loginFormKey = GlobalKey<FormState>();
  final profileformkey = GlobalKey<FormState>();

  bool validateAndSave() {
    final form = loginFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  bool profile() {
    final form = profileformkey.currentState;
    if (form!.validate()) {
      form.save();
      return false;
    } else {
      form.save();
      return true;
    }
  }

  
}
