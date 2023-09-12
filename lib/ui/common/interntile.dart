import 'package:coodehub/ui/common/slider.dart';
import 'package:flutter/material.dart';

class InternshipDetailsTile extends StatelessWidget {
  final Internship internship;

  const InternshipDetailsTile(this.internship, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: const Icon(
          Icons.work,
          color: Colors.white,
        ),
      ),
      title: Text(
        internship.title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          Text(
            internship.company,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 3),
          Text(
            'Duration: ${internship.duration}',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 18,
        color: Colors.grey,
      ),
      onTap: () {
        // Handle tile tap here
      },
    );
  }
}
