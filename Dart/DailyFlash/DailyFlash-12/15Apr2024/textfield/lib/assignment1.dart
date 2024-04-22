import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{

  const Assignment1({super.key});

  @override 
  State createState() => _Assignment1State();
}

class _Assignment1State extends State{

  bool secureText = false;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash-12"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          obscureText: secureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            suffixIcon: IconButton(
              icon: Icon(
                secureText?
                Icons.visibility : Icons.visibility_off
                ),
              onPressed: ()=>{
                  setState(() {
                    secureText = !secureText;
                  })
              },
              )
          ),
          
        ),
        ),
    );
  }
}