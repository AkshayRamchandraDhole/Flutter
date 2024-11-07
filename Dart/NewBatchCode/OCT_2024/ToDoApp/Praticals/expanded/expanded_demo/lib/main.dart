import 'package:flutter/material.dart';

import 'assetdemo.dart';
import 'spacerdemo.dart';

void main() {
  runApp(const AssetsDemo());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expanded Demo"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                // height: 200,
                width: 200,
                color: Colors.amber
              ),
            ),
             Expanded(
               child: Container(
                // height: 200,
                width: 200,
                color: Colors.red
                           ),
             ),
             Expanded(
               child: Container(
                // height: 200,
                width: 200,
                color: Colors.green
                           ),
             ),
          ]
        )
      ),
    );
  }
}
