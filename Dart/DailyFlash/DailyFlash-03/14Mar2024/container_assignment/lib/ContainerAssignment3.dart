
import 'package:flutter/material.dart';
class ContainerAssignment3 extends StatefulWidget{
  const ContainerAssignment3({super.key});

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
            
          ),
          ),
        ),
      );
    }
}