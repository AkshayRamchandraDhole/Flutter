import 'package:flutter/material.dart';



class Assignment2 extends StatefulWidget{

  const Assignment2({super.key});

  @override

  State createState() => _Assignment2State();
}

class _Assignment2State extends State{
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
              borderRadius: BorderRadius.circular(10),
              ),
             
             suffixIcon: _isFocused ? 
             const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.lock,
                  
                ),
                 SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.search
                )
              ],
             )
             : const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.lock,
                  
                ),
              ],
             ),
            ),
          ),
        ),
      
    );
  }
}
