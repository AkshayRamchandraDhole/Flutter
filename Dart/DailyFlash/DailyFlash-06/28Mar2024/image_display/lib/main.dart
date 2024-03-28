import 'package:flutter/material.dart';
import 'package:image_display/Assignment2.dart';
import 'package:image_display/Assignment3.dart';

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
      home: const Assignment5(),
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
          title: const Text("Image Display"),
          backgroundColor: Colors.blue,

          
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
       
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      Image.network("https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*",
                      height: 200,
                    //  width: double.infinity,
                      fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Pizza",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold

                      ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const Text("A Large circle of flat bread baked with cheese , tomatoes and vegetable spread on top.",
                        style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.w800
                      ),
                      ),
 
              ],
            ),
            ),
        
    );
  }
}
