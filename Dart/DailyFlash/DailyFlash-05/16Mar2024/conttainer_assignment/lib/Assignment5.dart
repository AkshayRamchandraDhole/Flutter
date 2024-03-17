import 'package:flutter/material.dart';
class ContainerAssignment5 extends StatelessWidget{

  const ContainerAssignment5({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(

      appBar : AppBar(
        title : const Text("Profile Information"),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
           const SizedBox(
            height: 20,
           ),
            
           
           
           Image.network("https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg",
           height: 200,
           width: 200,
           ),
        
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
            color: Colors.blue,
           ),
        
           
        
          ],
        ),
      ),
    );
  }
}
