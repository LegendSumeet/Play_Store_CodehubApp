import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';

class MoreSettings extends StatefulWidget {
  const MoreSettings({Key? key}) : super(key: key);

  @override
  State<MoreSettings> createState() => _MoreSettingsState();
}

class _MoreSettingsState extends State<MoreSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomFontText(
         text: "More Settings",
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 20), // Adjust the spacing
            _buildSettingCard(
              icon: Icons.person,
              title: "Profile",
              onTap: () {
              
              },
            ),
           
            _buildSettingCard(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {
                // Handle Logout tap
              },
            ),
          ],
        ),
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
