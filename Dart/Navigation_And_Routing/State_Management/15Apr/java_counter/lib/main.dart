import 'package:flutter/material.dart';

import 'flutter_counter.dart';
import 'java_counter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlutterCounter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
