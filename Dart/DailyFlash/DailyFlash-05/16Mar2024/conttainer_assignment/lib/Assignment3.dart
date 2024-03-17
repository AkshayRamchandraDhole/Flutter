import 'package:flutter/material.dart';
class ContainerAssignment3 extends StatelessWidget{

  const ContainerAssignment3({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(

      appBar : AppBar(
        title : const Text("Profile Information"),
      ),
      body: Column(
        
        children: [
         Center(
           child: Container(
            height: 300,
            width: 300,
            decoration:  BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 2.0,
                  spreadRadius: 10.0,
                  offset: Offset.zero,


                ),
                 
              ],

              border: Border.all(),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.network("https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg"),
           ),
         ),
         

        ],
      ),
    );
  }
}
