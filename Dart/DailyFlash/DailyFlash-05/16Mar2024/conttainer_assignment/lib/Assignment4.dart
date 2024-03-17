import 'package:flutter/material.dart';
class ContainerAssignment4 extends StatelessWidget{

  const ContainerAssignment4({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(

      appBar : AppBar(
        title : const Text("Profile Information"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const SizedBox(
          height: 20,
         ),
          Container(
          height: 100,
          width: 100,
          color: Colors.red,
         ),
         const SizedBox(
          height: 20,
         ),
         Container(
          height: 100,
          width: 100,
          color: Colors.amber,
         ),
         const SizedBox(
          height: 20,
         ),
         Container(
          height: 100,
          width: 100,
          color: Colors.green,
         ),
        const SizedBox(
          height: 20,
         ),
         

        ],
      ),
    );
  }
}
