import 'package:flutter/material.dart';

class ConLectureCode extends StatelessWidget{

  const ConLectureCode({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Three Container"),
        ),
        body: Container(
          alignment: Alignment.bottomRight,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
        
        
          ],
          ),
        ),
    );
  }
}