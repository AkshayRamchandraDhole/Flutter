import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App Bar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: const [
        Icon(Icons.face_2_rounded,
        color: Colors.black87,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.linked_camera_rounded,
        color: Colors.black87,
        )
      ]
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: const Text("Hello Core2web",
          textAlign: TextAlign.center,
          ),
          width: 360,
          height: 200,
          alignment: Alignment.center,
        ),
      ),
      
      
    );
  }
}