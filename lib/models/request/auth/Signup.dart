// ignore_for_file: file_names

import 'dart:convert';

SignupModel signupModelFromJson(String str) =>
    SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
  SignupModel({
    required this.email,
    required this.name,
    required this.password,
  });

  final String email;
  final String name;
  final String password;

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        email: json["email"],
        name: json["name"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "password": password,
      };
}
