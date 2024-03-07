import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerAssignment());
}

class ContainerAssignment extends StatelessWidget {
  const ContainerAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
         /* padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10
          ),*/

          margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),

          padding: const EdgeInsets.only(
            left: 50,
            right: 50,
            top: 50,
            bottom: 50
          ),
          alignment: Alignment.topCenter,
          height: 250,
          width: 250,
        //  color: Colors.redAccent,

          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: Colors.yellow,
              width: 10
            ),
            gradient: const LinearGradient(
              stops: [0.3,0.5],
              colors: [Colors.red,Colors.green]
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.purpleAccent,offset: Offset(30, 30),blurRadius: 8,
                
              ),
               BoxShadow(
                color: Colors.redAccent,offset: Offset(20, 20),blurRadius: 8,
                
              ),
               BoxShadow(
                color: Colors.yellowAccent,offset: Offset(10, 10),blurRadius: 8,
                
              ),
            ]
          ),
          
        ),
      ),
    );
  }
}
