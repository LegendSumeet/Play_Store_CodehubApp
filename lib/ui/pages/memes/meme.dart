import 'package:coodehub/ui/common/textwith.dart';
import 'package:flutter/material.dart';

class MemesPage extends StatefulWidget {
  const MemesPage({Key? key}) : super(key: key);

  @override
  _MemesPageState createState() => _MemesPageState();
}

class _MemesPageState extends State<MemesPage> {
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const CustomFontText(
          text: "Enjoy and Relax",
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: memePosts.length,
                itemBuilder: (BuildContext context, int index) {
                  final memePost = memePosts[index];

                  return Card(
                    color: Colors.grey[800],
                    elevation: 4.0,
                    margin: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(memePost['imageUrl']),
                          ),
                          title: Text(
                            memePost['title'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text(
                            memePost['publishDate'], // Format this date
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.network(
                          memePost['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            memePost['description'],
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                        
                      ],
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
