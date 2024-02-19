import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App Bar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions:const [
        Icon(Icons.face_2_rounded,
        color: Colors.black87,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.linked_camera_rounded,
        color: Colors.black87,
        ),
      ],
      ),
      body: Center(

        child: Column(
          children: [
            const SizedBox(height: 20),

            Container(
              color: Colors.blue,
              width: 160,
              height: 200,
              //alignment: Alignment.center,
            ),
            const SizedBox(height: 10),

            Container(
              color: Colors.red,
              width: 160,
              height: 200,
              //alignment: Alignment.center,
            ),

          ],
          

        ),
      ),
      
      
      
    );
  }
}