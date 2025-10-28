import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> genres = const [
    {"name": "Pop", "color": 0xFFE1306C},
    {"name": "Rock", "color": 0xFF515BD4},
    {"name": "Jazz", "color": 0xFF8134AF},
    {"name": "Hip-Hop", "color": 0xFFF58529},
    {"name": "Klasik", "color": 0xFF1777F2},
    {"name": "Indie", "color": 0xFFC9C9C9},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cari Genre'), backgroundColor: const Color(0xFF121212), elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 16 / 9,
          ),
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(genres[index]["color"]),
              child: Center(
                child: Text(
                  genres[index]["name"],
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
