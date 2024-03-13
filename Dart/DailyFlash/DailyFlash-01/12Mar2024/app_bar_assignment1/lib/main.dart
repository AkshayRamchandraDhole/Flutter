import 'package:app_bar_assignment1/appBarAssignment1.dart';
import 'package:app_bar_assignment1/appbarassignment2.dart';
import 'package:app_bar_assignment1/appbarassignment3.dart';
import 'package:app_bar_assignment1/appbarassignment4.dart';
import 'package:app_bar_assignment1/appbarassignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: AppBarAssignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
