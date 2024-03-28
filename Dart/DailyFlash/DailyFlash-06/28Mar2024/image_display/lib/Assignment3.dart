import 'package:flutter/material.dart';


class Assignment3 extends StatelessWidget{

  const Assignment3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Display"),
          backgroundColor: Colors.blue,

          
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
       
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                          Container(
                            
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                  
                          Container(
                            
                            height: 100,
                            width: 100,
                            color: Colors.purple,
                          ),       
                   
                  ],
                ),
               const SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                          Container(
                            
                            height: 100,
                            width: 100,
                            color: Colors.orange,
                          ),
                  
                          Container(
                            
                            height: 100,
                            width: 100,
                            color: Colors.green,
                          ),       
                   
                  ],
                ),
              ],
            ),
            ),
        
    );
  }
}
