import 'package:advance_quiz_app/views/finish_screen.dart';
import 'package:advance_quiz_app/views/profile_screen.dart';
import 'package:advance_quiz_app/views/question_screen.dart';
import 'package:advance_quiz_app/views/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FinishScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
