import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Assignment2 extends StatelessWidget{

  const Assignment2({super.key});

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
      body: ListView(
      scrollDirection:Axis.horizontal,
        children: [
          const SizedBox(
            height: 20,
          ),
          
          Row(
            children: [
              for(int i=0;i<5;i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                
                    
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5
                        ),
                        // image: const DecorationImage(
                        //            image: NetworkImage(
                        //             "https://icon-library.com/images/healthy-food-icon-png/healthy-food-icon-png-21.jpg"
                                    
                        //             ),
                        //           fit: BoxFit.cover,
                        //           // Set the width and height of the image
                        //          // width: 100,
                        //         //  height: 100,
                        //           ),
                        //  ),


                     ),
                    //  child:Image.network("https://icon-library.com/images/food-icon-png/food-icon-png-0.jpg",
                    //    height: 50,
                    //    width: 50,
                    //   //scale: 1.0,
                      
                    //  )

                    child: const Text("Image",
                    textAlign: TextAlign.center,
                    ),
                  
                ),
                    const SizedBox(
                      height: 10,
                      width: 30,
                    ),
                
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                              border: Border.all(
                              width: 0.5
                    ),
                    // image: const DecorationImage(
                    //           image: NetworkImage('https://icon-library.com/images/healthy-food-icon-png/healthy-food-icon-png-21.jpg'),
                    //           fit: BoxFit.cover,
                    //     )
                  ),
                  child: Text("Food Name",
                  textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                
                  ],
                ),
                
              ),
             
            ],
          ),
          
        ],
      )
    );
  }
}