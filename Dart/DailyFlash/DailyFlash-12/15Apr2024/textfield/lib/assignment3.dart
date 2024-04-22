import 'dart:html';

import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{

  const Assignment3({super.key});

  @override 
  State createState() => _Assignment3State();
}

class _Assignment3State extends State{

  
  TextEditingController _nameController = TextEditingController();
  TextEditingController _collegeController = TextEditingController();
 
   String? nameError;
   String? collegeError;

  void _validateField(){
      setState(() {
        nameError = _nameController.text.isEmpty ? "Enter Your Name" : null;
        collegeError = _collegeController.text.isEmpty ? "Enter Your College" : null;
      });


  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash-12"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _nameController,
             // onSubmitted: _addedList,
              decoration: InputDecoration(
                errorText: nameError,
               // labelText: "Enter weekday....",
                hintText: "Enter Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                
              ),
              
            ),
            ),
            const SizedBox(
              height: 50,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: _collegeController,
               // onSubmitted: _addedList,
                decoration: InputDecoration(
                 errorText: collegeError,
                 // labelText: "Enter weekday....",
                  hintText: "Enter Your College",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  
                ),
                
              ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: (){
                  _validateField();
              }, 
            child: const Text("Submit")
            ),
          )
              
        ],
      ),

    );
  }
}