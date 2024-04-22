import 'package:flutter/material.dart';

import 'page1.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Page1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
