import 'package:flutter/material.dart';

import 'assignment.dart';
import 'assignment2.dart';
import 'assignment3.dart';
import 'assignment4.dart';

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
        title : const Text("Container Assignment"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body:Container(

        child: Row(
          children: [
            const SizedBox(height:10),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),

            const SizedBox(width:5),
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
            ),

            const SizedBox(width:5),
            
            Container(
              height: 70,
              width: 80,
              color: Colors.green,
            ),

            const SizedBox(width:5),
            

          ],) 
        
        )
    );
  }
}