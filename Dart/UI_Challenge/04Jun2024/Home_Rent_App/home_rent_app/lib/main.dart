import 'package:flutter/material.dart';

import 'views/details_page.dart';
import 'views/home_page.dart';
import 'views/start_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
