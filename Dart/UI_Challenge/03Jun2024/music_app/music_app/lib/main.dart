import 'package:flutter/material.dart';
import 'package:music_app/views/player.dart';

import 'views/gallery.dart';
import 'views/start_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
