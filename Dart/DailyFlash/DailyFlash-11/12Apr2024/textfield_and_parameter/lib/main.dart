import 'package:flutter/material.dart';

import 'assignment2.dart';
import 'assignment3.dart';
import 'assignment4.dart';
import 'assignment5.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Assignment1 extends StatefulWidget{

  const Assignment1({super.key});

  @override

  State createState() => _Assignment1State();
}

class _Assignment1State extends State{
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(changeColor);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void changeColor(){
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });

  }

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
            focusNode: _focusNode,
            showCursor: true,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.red,
            decoration:  InputDecoration(
              border: OutlineInputBorder(
               // borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                // color: _isFocused ?  Colors.red : Colors.green,
              //  color: Colors.red
                )
              ),
             // focusColor: Colors.red,
            //  fillColor: Colors.red,
            //  hoverColor: Colors.red
            ),
          ),
        ),
      
    );
  }
}
