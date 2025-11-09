import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3AA8B7),
      appBar: AppBar(
        title: const Text('Giới thiệu'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Xây Dựng Ứng Dụng Di Động Nghe Nhạc',
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Thành Viên Gồm: '
                  'LÊ XUÂN TRƯỜNG '
                  'LÊ MINH TRƯỜNG '
                  'ứng dụng cung cấp giao diện trực quan, dễ sử dụng và nhiều tính năng thú vị như: '
                  'tìm kiếm bài hát, nghe nhạc trực tuyến, tạo playlist cá nhân, và nhiều chức năng khác.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Phiên bản: demo',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              '© Xây Dựng Ứng Dụng Di Động Nghe Nhạc Nhóm 14',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
