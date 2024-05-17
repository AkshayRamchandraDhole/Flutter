
import 'dart:developer';

import 'package:ephemeral_state_and_inherited_widget/inherited_widget_demo.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedDateObj(
      data: 50,
      child: MaterialApp(
      home: InheritedWidgetDemo(),
      debugShowCheckedModeBanner: false,
      )
    );
  }
}

class Course extends StatefulWidget{

  final String courseName;

  const Course(
    {
      super.key,
      required this.courseName,
    }
  );

  @override 
  State<Course> createState() => _CourseState();

}

class _CourseState extends State<Course>{


  int referenceCount = 0;
  
  @override
  Widget build(BuildContext context){
    log(widget.courseName);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              referenceCount++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius:  BorderRadius.circular(10.0),
            ),
            child: Text(widget.courseName),
          ),
        ),

        const SizedBox(
          width: 30,
        ),

        Container(
          alignment: Alignment.center,
          height: 65,
          width: 80,
          decoration:  BoxDecoration(
            color: Colors.purple.shade200,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text("Count: $referenceCount"),
        )



      ],
    );
  }
}

class EphemeralDemo extends StatefulWidget{

  const EphemeralDemo({super.key});

  @override
  State createState() => _EphemeralDemoState();

}
class _EphemeralDemoState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ephemeral State Demo"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,

        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Course(
            courseName: "Java"
          ),

         SizedBox(
            height: 50,
          ),

          Course(
            courseName : "Flutter"
          )
        ],),
    );
  }
}