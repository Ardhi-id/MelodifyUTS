import 'package:flutter/material.dart';
import 'playlist_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToDetailPage(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlaylistDetailPage(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Selamat Datang'), backgroundColor: const Color(0xFF121212), elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Baru Rilis', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return AlbumCard(
                      title: index == 0 ? "Album Senja" : "Future Funk",
                      artist: index == 0 ? "Musisi Indie" : "DJ Elektronik",
                      imageUrl: "https://picsum.photos/seed/album${index + 1}/200",
                      onTap: () => _goToDetailPage(context, index == 0 ? "Album Senja" : "Future Funk"),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Text('Populer Hari Ini', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return PopularSongTile(
                    title: index == 0 ? "Melodi Malam" : "Rock Gempita",
                    artist: index == 0 ? "Solois Pop" : "Band Rock",
                    imageUrl: "https://picsum.photos/seed/album${index + 3}/200",
                    onTap: () => _goToDetailPage(context, index == 0 ? "Melodi Malam" : "Rock Gempita"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;
  final VoidCallback onTap;

  const AlbumCard({Key? key, required this.title, required this.artist, required this.imageUrl, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.only(right: 16),
        child: SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(imageUrl, height: 120, width: 160, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title, style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(artist, style: Theme.of(context).textTheme.bodyLarge, overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularSongTile extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;
  final VoidCallback onTap;

  const PopularSongTile({Key? key, required this.title, required this.artist, required this.imageUrl, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(artist, style: Theme.of(context).textTheme.bodyLarge),
        trailing: const Icon(Icons.play_arrow),
        onTap: onTap,
      ),
    );
  }
}
