import 'package:coodehub/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LearningPathScreen extends StatelessWidget {
  const LearningPathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter Roadmap",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_sharp,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: GestureDetector(
        onScaleUpdate: (details) {
          // Handle zoom in/out here
        },
        child: const SingleChildScrollView(child: LearningPath()),
      ),
    );
  }
}

class LearningPath extends StatefulWidget {
  const LearningPath({super.key});

  @override
  _LearningPathState createState() => _LearningPathState();
}

class _LearningPathState extends State<LearningPath> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            LearningStep(
              title: "Step 1",
              description: "Basic Introduction",
              subcategories: [
                "Subcategory 1",
              ],
            ),
            LearningConnector(),
            LearningStep(
              title: "Step 2",
              description:
                  "Intermediate Topics ghghdhhfgfgggggggggggggggghtyrtuyuyuiutyrtyretqwrqwrqwrqwrqwrqwrqwrwqrwrqwrqwrwnvbnbvnbvnvbnvbnbvxzczxczxcadasadasdweweqqwwqewertrtertfgfdgdfgfgfgvcbcvbcvbvcbvcbcbvcbvb",
              subcategories: ["Subcategory 3", "Subcategory 4"],
            ),
            LearningConnector(),
            LearningStep(
              title: "Step 3",
              description: "Advanced Concepts",
              subcategories: [
                "Subcategory 5",
                "Subcategory 6",
                "ssdsds",
                "sdsdsdsd",
              ],
            ),
            LearningConnector(),
            LearningStep(
              title: "Step 3",
              description: "Advanced Concepts",
              subcategories: [
                "Subcategory 5",
                "Subcategory 6",
                "ssdsds",
                "sdsdsdsd",
              ],
            ),
            LearningConnector(),
            LearningStep(
              title: "Step 3",
              description: "Advanced Concepts",
              subcategories: [
                "Subcategory 5",
                "Subcategory 6",
                "ssdsds",
                "sdsdsdsd",
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class LearningStep extends StatelessWidget {
  final String title;
  final String description;
  final List<String> subcategories;

  const LearningStep({
    super.key,
    required this.title,
    required this.description,
    required this.subcategories,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Container(
            width: width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      description,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (subcategories.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 10,
                        children: [
                          for (var subcategory in subcategories)
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const CustomShapeDialog(); // This is the content of the bottom sheet
                                  },
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    subcategory,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class LearningConnector extends StatelessWidget {
  const LearningConnector({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 3,
              color: Colors.white,
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(
              width: 3,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
class CustomShapeDialog extends StatelessWidget {
  const CustomShapeDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.height * 0.7,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Dialog Title',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(thickness: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'This is the scrollable content ' * 100,
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Path Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: const LearningPathScreen(),
    );
  }
}
