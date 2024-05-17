import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'transaction_screen.dart';
import 'grid_view.dart';

void main() {
  runApp(const ExpenseManagerApp());
}

class ExpenseManagerApp extends StatelessWidget {
  const ExpenseManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GridViewScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
