import 'package:flutter/material.dart';

class PlaylistDetailPage extends StatelessWidget {
  final String title;

  final List<Map<String, String>> songs = const [
    {"title": "Alamak Rizky Febian & Adrian Khalif", "duration": "3:45"},
    {"title": "Ropang - Denny Caknan X NDX AKA", "duration": "4:15"},
    {"title": "Malu-malu Tapi Nyaman - Lyodra", "duration": "2:50"},
    {"title": "Mangu - Fourtwnty feat. Charita Utami", "duration": "5:02"},
    {"title": "Interlude", "duration": "1:10"},
  ];

  const PlaylistDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/seed/${title.hashCode}/600/400",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 220,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).cardColor,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                    title: Text(
                      songs[index]["title"]!,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Text(
                      songs[index]["duration"]!,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    trailing: const Icon(
                      Icons.more_vert,
                      color: Colors.white70,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
