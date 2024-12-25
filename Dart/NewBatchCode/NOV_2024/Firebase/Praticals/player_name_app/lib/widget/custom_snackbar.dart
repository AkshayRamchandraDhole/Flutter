import 'package:flutter/material.dart';

class CustomSnackbar {
  static showCustomSnackbar({required BuildContext context, required String message}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12
        ),
        )
        )
    );
  }
}