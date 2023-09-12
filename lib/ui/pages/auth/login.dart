import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body:  SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const CustomFontText(
              text: "Hello,",
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white,
            ),
            const CustomFontText(
              text: "Welcome Back",
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white,
            ),
             const CustomFontText(
              text: "Good to See Your Again!",
              fontWeight: FontWeight.normal,
              fontSize: 20,
              color: Colors.white,
            ),
             const SizedBox(height: 40),
            TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 18),
              cursorColor: Colors.white,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                labelText: "Email",
                hintText: "Enter your Email",
                prefixIcon: const Icon(Icons.email, color: Colors.white),
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
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 18),
              cursorColor: Colors.white,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                labelText: "Password",
                hintText: "Enter your Password",
                prefixIcon: const Icon(Icons.lock, color: Colors.white),
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
              ),
            ),
            const SizedBox(height: 20),
             Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(()=>const LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 8,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            
           

          ],
        ),
      )),
    );
  }
}
