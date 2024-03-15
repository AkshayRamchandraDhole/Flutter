/*
    Create a screen that display the container in the center having size(100,100)
    Container must have top right border of width 5 and color of red
    givee the padding to container and 
    display the text in center of conatiner

 */

import 'package:flutter/material.dart';



class ContainerAssignment3 extends StatelessWidget{

  const ContainerAssignment3({super.key});

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
              decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10.0),
              
              ),
              border: Border.all(
                color: Colors.grey,
                width: 4
              ),
              color: Colors.lightGreen
              
                
              ),
              child: const Center(child: Text("Text Here")),
            )
          ]),
      ),
    );
  }
}