import 'package:flutter/material.dart';
class Assignment9 extends StatelessWidget{

  const Assignment9({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: const Text("First AppBar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      
        body: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration( 
            border: Border.all(
            color: Colors.red,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(20.0),
          ),
        ),
    );
  }

}