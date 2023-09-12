import 'package:coodehub/ui/common/slider.dart';
import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';

class Memes extends StatefulWidget {
  const Memes({super.key});

  @override
  State<Memes> createState() => _MemesState();
}

class _MemesState extends State<Memes> {
  List<Map<String, dynamic>> memePosts = [
    {
      'imageUrl':
          'https://assets-global.website-files.com/603fbb650184a06b268ce08b/638e76b29ab92880e3cf4e15_project-roadmap-excel-spreadsheet-p-1080.jpg',
      'title': 'Funny Meme 1',
      'description': 'A hilarious meme for your enjoyment!',
      'publishDate': '2023-09-09',
    },
    {
      'imageUrl':
          'https://assets-global.website-files.com/603fbb650184a06b268ce08b/638e76b29ab92880e3cf4e15_project-roadmap-excel-spreadsheet-p-1080.jpg',
      'title': 'Funny Meme 1',
      'description': 'A hilarious meme for your enjoyment!',
      'publishDate': '2023-09-09',
    },
    // Add more meme posts here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFontText(
                  text: "Enjoy And Relax",
                  color: Colors.white,
                  fontSize: 20,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: memePosts.length,
                itemBuilder: (BuildContext context, int index) {
                  final memePost = memePosts[index];

                  return SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Card(
                        color: Colors.black,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(memePost['imageUrl']),
                              ),
                              title: Text(
                                memePost['publishDate'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              subtitle: Text(
                                memePost['publishDate'],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.network(
                              memePost['imageUrl'],
                              height: 300.0,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomFontText(
                                text: memePost['title'],
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomFontText(
                                text: memePost['description'],
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
