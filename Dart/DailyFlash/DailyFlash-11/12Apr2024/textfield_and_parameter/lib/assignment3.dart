import 'package:flutter/material.dart';



class Assignment3 extends StatefulWidget{

  const Assignment3({super.key});

  @override

  State createState() => _Assignment3State();
}

class _Assignment3State extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Daily_Flash-11"),
        backgroundColor: Colors.blueGrey,
      ),
      body: 
         Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
         
            showCursor: true,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.red,
            decoration:  InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Enter Your Name",
             // hintStyle: TextStyle(color: Colors.amber),
             // fillColor: Colors.amber
             filled: true,
             fillColor: Colors.amber,
             
            
            ),
            //style: TextStyle(color: Colors.amber),
            textAlign: TextAlign.center,
            
          ),
        ),
      
    );
  }
}
