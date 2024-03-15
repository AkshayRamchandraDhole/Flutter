

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

          child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(0,-4)
                  )
                ]
                )
              ),
             
             
          ),
      
      
    );
  }
}
