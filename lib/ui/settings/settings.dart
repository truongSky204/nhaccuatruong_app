import 'package:flutter/material.dart';
import 'about_page.dart';


class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3AA8B7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Cài đặt', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 12),

          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.white),
            title: const Text('Thông báo', style: TextStyle(color: Colors.white)),
            trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.palette, color: Colors.white),
            title: const Text('Chủ đề', style: TextStyle(color: Colors.white)),
            subtitle: const Text('Sáng', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.language, color: Colors.white),
            title: const Text('Ngôn ngữ', style: TextStyle(color: Colors.white)),
            subtitle: const Text('Tiếng Việt', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.lock_outline, color: Colors.white),
            title: const Text('Quyền riêng tư', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),

          // Bên trong Widget build:
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.white),
            title: const Text('Giới thiệu', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white),
            title: const Text('Đăng xuất', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

