import 'package:flutter/material.dart';


class Assignment4 extends StatelessWidget{

  const Assignment4({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : const Text("Container Assignment"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              flex: 6,
              child: Container(
                height: 100,
                color: Colors.red,
                ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                color: Colors.purple,
                ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.green,
                ),
            ),

            

          ],
        ),
        ),
           
    );
  }
}