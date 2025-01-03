import 'package:flutter/material.dart';

import 'views/view_employee_id.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ViewEmployeeID(),
      debugShowCheckedModeBanner: false,
    );
  }
}
