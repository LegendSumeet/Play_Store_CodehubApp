import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: RoadmapScreen()));

class RoadmapScreen extends StatelessWidget {
  const RoadmapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Learning Path',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            LearningPathFlowchartColumn(
              title: 'Step 1',
              steps: ['Learn HTML and CSS', 'JavaScript Fundamentals'],
            ),
            LearningPathFlowchartColumn(
              title: 'Step 2',
              steps: ['Front-End Frameworks'],
            ),
            LearningPathFlowchartColumn(
              title: 'Step 3',
              steps: ['Advanced Topics'],
            ),
          ],
        ),
      ),
    );
  }
}

class LearningPathFlowchartColumn extends StatelessWidget {
  final String title;
  final List<String> steps;

  const LearningPathFlowchartColumn({super.key, required this.title, required this.steps});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200, // Adjust the column width as needed
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: steps.length,
          itemBuilder: (context, index) {
            final step = steps[index];
            return ListTile(
              title: Text(step),
              onTap: () {
                // Handle step tap here
              },
            );
          },
        ),
        const LearningPathConnector(),
      ],
    );
  }
}

class LearningPathConnector extends StatelessWidget {
  const LearningPathConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 2, // Adjust the connector width as needed
          height: 80, // Adjust the connector height as needed
          color: Colors.white,
        ),
      ],
    );
  }
}
