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
      home: Assignment2(),
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
        title: const Text("DailyFlash-08"),
        backgroundColor: Colors.white,
        shape: Border.all(
          width: 0.5
        ),
        actions: const[
          Icon(
            Icons.circle_sharp,
           // size: BorderSide.strokeAlignOutside,
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.amber,
                          ),
                      
                                  ]
                                ),
                    ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                
                  children: [
                
                         Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    
                    const SizedBox(
                      height: 10,
                    ),
                
                    
                    
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 230,
                      color: Colors.green,
                    )
                  ],
                ),
            
               const SizedBox(
                  height: 20,
                ),
            
                Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.purple[200],
                          ),
                      
                                  ]
                                ),
                    ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                
                  children: [
                
                         Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue[300],
                        ),
                      ],
                    ),
                    
                    const SizedBox(
                      height: 10,
                    ),
                
                    
                    
                  ],
                ),
                
              ],
            ),
          ),


          
        ),
        
    );
  }
}