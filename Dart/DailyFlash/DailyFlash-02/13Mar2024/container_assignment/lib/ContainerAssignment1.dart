/*
    Create a screen that display the containerin the center having size(200,200)
    Container musr have boder runded edges
    the border must be of color red
    display the text in center of conatiner

 */

import 'package:flutter/material.dart';



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
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.red,width: 2),
              ),
              child: const Center(child: Text("Text Here")),
            )
          ]),
      ),
    );
  }
}