import 'package:coodehub/ui/common/textwith.dart';
import 'package:coodehub/ui/pages/auth/info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  final String id;
  const OtpScreen({super.key, required this.id});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const CustomFontText(
              text: "Verify The Phone Number",
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            const CustomFontText(
              text: "Check Your SMS messages. We've sent You the OTP",
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.white,
            ),
            const SizedBox(height: 40),
            TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 18),
              cursorColor: Colors.white,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 6, // Limit input to 6 characters (typical for OTP)
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                labelText: "OTP",
                hintText: "Enter the OTP",
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.white),
                prefixStyle: const TextStyle(color: Colors.white),
                labelStyle: const TextStyle(color: Colors.white),
                hintStyle: const TextStyle(color: Colors.white70),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                counterText: "", // Hide the counter text
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=>const InfoData());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const CustomFontText(
                  text: "Verify",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
