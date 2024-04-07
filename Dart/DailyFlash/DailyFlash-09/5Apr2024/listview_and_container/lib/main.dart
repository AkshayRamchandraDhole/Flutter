import 'package:flutter/material.dart';
import 'package:listview_and_container/assignment5.dart';

import 'assignment2.dart';
import 'assignment3.dart';
import 'assignment4.dart';
import 'assignment5a.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Assignment1 extends StatelessWidget{

  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.orange,
              ),

              Container(
                height: 60,
                width: 60,
                color: Colors.red,
              ),

              Container(
                height: 60,
                width: 60,
                color: Colors.green,
              ),

              Container(
                height: 60,
                width: 60,
                color: Colors.yellow,
              ),

              Container(
                height: 60,
                width: 60,
                color: Colors.black,
              )
            ],
      )
    );
  }
}