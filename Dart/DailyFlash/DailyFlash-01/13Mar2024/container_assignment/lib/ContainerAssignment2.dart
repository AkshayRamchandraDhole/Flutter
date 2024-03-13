/*
    Create a screen that display the containerin the center having size(100,100)
    Container must have left border of width 5 andcolor of red
    givee the padding to container and 
    display the text in center of conatiner

 */

import 'package:flutter/material.dart';



class ContainerAssignment2 extends StatelessWidget{

  const ContainerAssignment2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Assignment"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
              
              ),
              color: Colors.pinkAccent
              
                
              ),
              child: const Center(child: Text("Text Here")),
            )
          ]),
      ),
    );
  }
}