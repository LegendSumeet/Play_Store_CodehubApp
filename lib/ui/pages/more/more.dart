import 'package:coodehub/constants/app_constants.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';

class MoreSettings extends StatelessWidget {
  const MoreSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomFontText(
          text: "Resources",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'YourCustomFont', // Use your custom font here
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                crossAxisCount: 2, // 2 columns
                crossAxisSpacing: 10.0, // Spacing between columns
                mainAxisSpacing: 10.0, // Spacing between rows
                shrinkWrap: true,
                children: [
                  _buildImageCard(
                    imageUrl:
                        'https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png',
                  ),
                  _buildImageCard(
                    imageUrl:
                        'https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png',
                  ),
                ],
              ),
              const SizedBox(height: 20), // Adjust the spacing
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // Place the Logout button in the bottomNavigationBar
        padding: const EdgeInsets.all(15),
        child: _buildSettingCard(
          icon: Icons.logout,
          title: "Logout",
          onTap: () {
            // Handle Logout tap
          },
        ),
      ),
    );
  }

  Widget _buildImageCard({required String imageUrl}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget _buildSettingCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      color: Colors.grey[800],
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16, // Adjust the font size
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        onTap: onTap,
      ),
    );
  }
}
