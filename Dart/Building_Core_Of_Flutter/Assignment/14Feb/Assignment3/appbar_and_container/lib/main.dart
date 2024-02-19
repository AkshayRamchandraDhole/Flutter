import 'package:appbar_and_container/assignment1.dart';
import 'package:appbar_and_container/assignment2.dart';
import 'package:appbar_and_container/assignment3.dart';
import 'package:appbar_and_container/assignment4.dart';
import 'assignment5.dart';
import 'assignment6.dart';
import 'package:flutter/material.dart';
import 'assignment7.dart';
import 'assignment8.dart';
import 'assignment9.dart';
import 'assignment10.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment10(),
      debugShowCheckedModeBanner: false,
    );
  }
}
