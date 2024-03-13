/*
    Create a screen that display the container in the  having size(100,100)
    Container color red and display text "click me!" in center
    on tapping the container the text must change th conatiner tapped 
    and the color of the conatiner must chnage to blue

 */

import 'package:flutter/material.dart';

class ContainerAssignment5 extends StatefulWidget{
  const ContainerAssignment5({super.key});

  @override
  State createState() => _ContainerAssignment5State();
  
}


class _ContainerAssignment5State extends State{

  Color selectedColor = Colors.red;

  void changeColor(){
    if(selectedColor == Colors.red){
      selectedColor = Colors.blue;
    }else{
      selectedColor = Colors.red;
    }
    setState(() {
      
    });
  }
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Container Assignment"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: changeColor,
            child: Container(
              width: 100,
              height: 100,
              color: selectedColor,
              child: const Center(
                child: Text(
                  "Click Me!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                )),
            ),
          ),
        ),
      );
    }
}