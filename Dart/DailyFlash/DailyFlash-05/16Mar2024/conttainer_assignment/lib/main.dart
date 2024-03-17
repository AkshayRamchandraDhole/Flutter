import 'package:conttainer_assignment/Assignment2.dart';
import 'package:conttainer_assignment/Assignment3.dart';
import 'package:conttainer_assignment/Assignment4.dart';
import 'package:conttainer_assignment/Assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerAssignment5()
    );
  }
}

class ContainerAssignment1 extends StatelessWidget{

  const ContainerAssignment1({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(

      appBar : AppBar(
        title : const Text("Profile Information"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Image.network("https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg")
          ),
          const Column(
            children: [
              Text("Name : Rohit Sharma",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              ),
              Text("Phone Number : 7768902644",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}
