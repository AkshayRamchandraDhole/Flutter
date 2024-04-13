import 'package:flutter/material.dart';

import 'Assignment2.dart';
import 'Assignment3.dart';
import 'Assignment4.dart';
import 'Assignment5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const Assignment3(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Assignment1 extends StatelessWidget{

  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container And Shape"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            // const SizedBox(
            //   height: 100,
            // ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  
                 gradient: const LinearGradient(
                 begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.red,
                    Colors.blue

                  ],
                 
                 )
                  
              ),
             
            )
          ]
        )
      )
    );
  }
}
