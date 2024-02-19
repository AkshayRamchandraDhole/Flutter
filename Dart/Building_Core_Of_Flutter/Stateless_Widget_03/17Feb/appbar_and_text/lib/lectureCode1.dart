import "package:flutter/material.dart";

class LectureCode1 extends StatelessWidget{

  const LectureCode1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless_App1"),
        centerTitle: true,
        actions: const[
          Icon(Icons.notifications),
          Icon(Icons.favorite),
        ],
      ),

      body: const Center(
        child: Text("Flutter_APP1",
                      style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}