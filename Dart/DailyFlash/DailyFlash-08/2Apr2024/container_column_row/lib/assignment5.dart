import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{

  const Assignment5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash-08"),
        backgroundColor: Colors.white,
        shape: Border.all(
          width: 0.5
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder:(context,index){
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal:10

            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              //borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                     
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Title",
                    style: TextStyle(fontSize: 16),
                    ),
                
                    
                
                   
                  ],
                ),
                const SizedBox(
                      height: 10,
                    ),

                const Row(
                      children: [
                        Text("Give Some decription here",
                        style: TextStyle(
                          fontSize: 13
                        ),
                        ),

                         SizedBox(
                          width: 150,
                        ),

                        Icon(
                          Icons.add_circle_sharp,
                          size: 70,
                          color: Colors.purple,
                        )
                      ],
                    ),
              ],
            ),
          );
        } 
        
        )
    );
  }
}