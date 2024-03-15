
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

          child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
             child: Column(
               children: [
                Image.network(
                    "https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg",
                    height: 200,
                    width: 200,
                    ),
                 const Center(
                  child: Text("Rohit Sharma")
                    
                    ),
               ],
             ),
             
          ),
        ),
      
    );
  }
}
