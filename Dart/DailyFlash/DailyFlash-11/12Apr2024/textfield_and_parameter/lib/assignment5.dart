import 'package:flutter/material.dart';



class Assignment5 extends StatefulWidget{

  const Assignment5({super.key});

  @override

  State createState() => _Assignment5State();
}

class _Assignment5State extends State{

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
           maxLines: 10,
            showCursor: true,
            keyboardType: TextInputType.emailAddress,
           cursorColor: Colors.red,
            decoration:  InputDecoration(
               contentPadding: EdgeInsets.symmetric(vertical: 20),
              labelText: "Enter Your Name",
              
              filled: true,
              fillColor: Colors.grey.shade200,
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
