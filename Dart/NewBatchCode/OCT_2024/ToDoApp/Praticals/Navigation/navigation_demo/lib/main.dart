import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      // routes: {
      //   "/thirdScreen" : (BuildContext context) => const ThirdScreen()
      // },
    );
  }
}
