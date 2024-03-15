import 'package:container_assignment/ContainerAssignment2.dart';
import 'package:container_assignment/ContainerAssignment3.dart';
import 'package:container_assignment/ContainerAssignment4.dart';
import 'package:container_assignment/ContainerAssignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerAssignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ContainerAssignment1 extends StatelessWidget{
  const ContainerAssignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Assignment"),
        centerTitle: true,
      ),

      body: Center(

          child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
             child: Center(
              child: Image.network(
                "https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg",
                height: 200,
                width: 200,
                )
                ),
             
          ),
        ),
      
    );
  }
}
