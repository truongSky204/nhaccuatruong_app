import 'package:flutter/material.dart';

class DiscoveryTab extends StatelessWidget {
  const DiscoveryTab({super.key});

  // Dummy danh sách bài hát mẫu
  List<Widget> buildSongSection(String title, Color bgColor) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              width: 120,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.music_note, size: 40, color: Colors.white),
                  const SizedBox(height: 8),
                  Text('Bài hát ${index + 1}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 4),
                  const Text('Nghệ sĩ', style: TextStyle(color: Colors.white70)),
                ],
              ),
            );
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3AA8B7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '#discovery',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = LinearGradient(
                colors: <Color>[Colors.orange, Colors.green, Colors.blue],
              ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ),
        actions: const [
          Icon(Icons.mic_none_outlined, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Khám Phá Âm Nhạc',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),

          // List các danh mục
          Expanded(
            child: ListView(
              children: [
                ...buildSongSection('Nghe Nhiều Nhất', Colors.deepPurpleAccent),
                ...buildSongSection('Mới Phát Hành', Colors.teal),
                ...buildSongSection('Top Trending', Colors.pinkAccent),
              ],
            ),
          ),

          // Mini player
          Container(
            height: 60,
            color: Colors.black45,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: const [
                Icon(Icons.music_note, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Text('Tên bài đang phát', style: TextStyle(color: Colors.white)),
                ),
                Icon(Icons.play_arrow, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
