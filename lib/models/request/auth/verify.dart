// ignore_for_file: file_names

import 'dart:convert';

VerifyModel verifyModelFromJson(String str) => VerifyModel.fromJson(json.decode(str));

String verifyModelToJson(VerifyModel data) => json.encode(data.toJson());

class VerifyModel {
  VerifyModel({
    required this.email,
    required this.otp,

  });

  final String email;
  final String otp;

  factory VerifyModel.fromJson(Map<String, dynamic> json) => VerifyModel(
        email: json["email"],
        otp: json["otp"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "otp": otp,
      };
}
