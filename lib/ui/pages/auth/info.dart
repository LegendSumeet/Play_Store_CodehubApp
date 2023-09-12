import 'package:coodehub/controllers/signup_provider.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:coodehub/ui/pages/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

import '../../../models/request/auth/Signup.dart';

class InfoData extends StatefulWidget {
  const InfoData({super.key});

  @override
  State<InfoData> createState() => _InfoDataState();
}

final _formKey = GlobalKey<FormState>();

class _InfoDataState extends State<InfoData> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpNotifier>(builder: (context, signUpNotifier, child) {
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const CustomFontText(
                  text: "We need some details to create your account",
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    labelText: "Name",
                    hintText: "Enter your name",
                    prefixIcon: const Icon(Icons.person, color: Colors.white),
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
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter a valid Name' : null,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: email,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    labelText: "Email",
                    hintText: "Enter your email",
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
                  validator: (value) {
                    if (!EmailValidator.validate(value ?? '')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: password,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    labelText: "Password",
                    hintText: "Create a Password",
                    prefixIcon: const Icon(Icons.password, color: Colors.white),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        Loader(context);
                        SignupModel model = SignupModel(
                            email: email.text,
                            name: name.text,
                            password: password.text);

                        await signUpNotifier.signup(model);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const CustomFontText(
                      text: "Sign Up",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      );
    });
  }

  Future<dynamic> Loader(BuildContext context) {
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
