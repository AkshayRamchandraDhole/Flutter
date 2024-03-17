
import 'package:elevated_button_assignment/Assignment2.dart';
import 'package:elevated_button_assignment/Assignment3.dart';
import 'package:elevated_button_assignment/Assignment4.dart';
import 'package:elevated_button_assignment/Assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ElevatedButtonAssignment5(),
      
    );
  }
}

class ElevatedButtonAssignment1 extends StatelessWidget{
  const ElevatedButtonAssignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : const Text("Elevated Button")
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){}, 
              
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                shadowColor: Colors.red
              ),
              child: Text("Click Me !")
              ),

          ],),
      )
      ,
    );
  }
}
