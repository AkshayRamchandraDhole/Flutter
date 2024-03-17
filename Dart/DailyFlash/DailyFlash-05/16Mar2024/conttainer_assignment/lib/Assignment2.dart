import 'package:flutter/material.dart';
class ContainerAssignment2 extends StatelessWidget{

  const ContainerAssignment2({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(

      appBar : AppBar(
        title : const Text("Profile Information"),
      ),
      body: Column(
        children: [
         Container(
          height: 100,
          width: 100,
          child: Image.network("https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg"),
         ),
         Container(
          height: 100,
          width: 100,
          child: Image.network("https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg"),
         ),
         Container(
          height: 100,
          width: 100,
          child: Image.network("https://imgk.timesnownews.com/story/AP_19187620141218_1.jpg"),
         )

        ],
      ),
    );
  }
}
