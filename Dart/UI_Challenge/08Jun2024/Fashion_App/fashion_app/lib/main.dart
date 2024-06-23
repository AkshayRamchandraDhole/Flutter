import 'package:flutter/material.dart';

import 'views/cart.dart';
import 'views/checkout.dart';
import 'views/details.dart';
import 'views/home.dart';
import 'views/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
