import "package:flutter/material.dart";
class Assignment1 extends StatelessWidget{

  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment1"),
          backgroundColor: Colors.red
        ),

        body: Container(
          height: 100,
          width: 100,
          color: Colors.yellow,

        ),

        bottomNavigationBar: BottomNavigationBar(
          items:const [ 
            BottomNavigationBarItem(icon: Icon(Icons.home), label:"HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "WISHLIST"),

          ]
        ),

    );
  }



}