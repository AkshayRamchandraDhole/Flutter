import 'package:flutter/material.dart';
import 'package:instagram_home_page/assignment9.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment9()
    );
  }
}
