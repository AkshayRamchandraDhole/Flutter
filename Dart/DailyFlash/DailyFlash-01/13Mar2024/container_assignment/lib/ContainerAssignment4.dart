/*
    Create a screen that display the container in the center having size(100,100)
    Container must have top right and left border of width 5 and 
    give the padding to container and 
    display the text in of conatiner

 */

import 'package:flutter/material.dart';



class ContainerAssignment4 extends StatelessWidget{

  const ContainerAssignment4({super.key});

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
               bottomRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0)
              
              ),
              border: Border.all(
                color: Colors.red.shade300,
                width: 4
              ),
              color: Colors.pink.shade100
              
                
              ),
              
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,width: 5,),
                  Text("Akshay")] ),
            )
          ]),
      ),
    );
  }
}