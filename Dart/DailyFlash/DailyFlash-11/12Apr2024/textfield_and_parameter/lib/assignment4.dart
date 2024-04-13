import 'package:flutter/material.dart';



class Assignment4 extends StatefulWidget{

  const Assignment4({super.key});

  @override

  State createState() => _Assignment4State();
}

class _Assignment4State extends State{

  int _textCount = 0;



  
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
            maxLength: 20,
            showCursor: true,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.red,
            decoration:  InputDecoration(
              labelText: "Enter Your Name",
              counterStyle: TextStyle(
                color: _textCount == 20 ? Colors.red : Colors.green,
                
              ),
              
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                style: BorderStyle.solid,
                width: 0.5,
                color: Colors.red,
              )
              ),
             
             
            
            ),
            
            
          ),
        ),
        
      
    );
  }
}
