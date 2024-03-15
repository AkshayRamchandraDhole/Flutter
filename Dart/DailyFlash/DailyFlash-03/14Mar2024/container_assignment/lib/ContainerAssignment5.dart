

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ContainerAssignment5 extends StatelessWidget{
  const ContainerAssignment5({super.key});

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
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red,
                    Colors.red,
                    Colors.blue,
                    Colors.blue
                  ]
                ),
                
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
