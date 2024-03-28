import 'package:flutter/material.dart';


class Assignment4 extends StatelessWidget{

  const Assignment4({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Display"),
          backgroundColor: Colors.blue,

          
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 200,
           // color: Colors.grey,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
                          //color: Colors.purple,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  

                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                       Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.purple,
                        ),
                      ),

                   

                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.red
                        ),
                        
                      )
                    ],
                  )
                
              ],
            ),
          ))
    );
  }
}
