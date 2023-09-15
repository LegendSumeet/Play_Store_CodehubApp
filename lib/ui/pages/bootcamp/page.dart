import 'package:flutter/material.dart';

class BootCampPage extends StatelessWidget {
  const BootCampPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Details",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              child: Image.network(
                "https://global-uploads.webflow.com/60798d9b0b61160814b3d8c3/6502a334da81be2934596695_23rd%20September%20JavaScript%20and%20reactjs%20A-Z.jpg",
                fit: BoxFit.cover, // Ensure the image covers its container
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                " Welcome to DevTown ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Hey There! Welcome to DevTown. All the students who complete the Bootcamp with complete attendance and project submission will be rewarded certificates from us. Connect with us at to get all info about Training and Classes every day.",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(), // Push the button to the bottom
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
              ),
              onPressed: () {
                // Handle the button press action here
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Register Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
