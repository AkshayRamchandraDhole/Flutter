import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App Bar",),
        backgroundColor: Colors.purpleAccent,
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
      
    );
  }
}