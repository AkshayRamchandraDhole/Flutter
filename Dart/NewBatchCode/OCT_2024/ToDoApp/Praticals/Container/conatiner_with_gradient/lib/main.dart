import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Container Demo",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
            ),

          ),
          centerTitle: true,
          backgroundColor: Colors.blue
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors:[
                  Colors.black,
                  Colors.pink
                ],
              ),
              
            ),
            child: const Text(
                "Hello ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                )
              ),
          )
        )
      ),
    );
  }
}
