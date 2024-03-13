import 'package:container_assignment/ContainerAssignment1.dart';
import 'package:container_assignment/ContainerAssignment2.dart';
import 'package:container_assignment/ContainerAssignment3.dart';
import 'package:container_assignment/ContainerAssignment4.dart';
import 'package:container_assignment/ContainerAssignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerAssignment5(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
