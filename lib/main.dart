import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:nhaccuatruong_app/ui/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseApp app = await Firebase.initializeApp();
  print('✅ Firebase App Name: ${app.name}'); // dòng kiểm tra

  runApp(const MusicApp());
}


