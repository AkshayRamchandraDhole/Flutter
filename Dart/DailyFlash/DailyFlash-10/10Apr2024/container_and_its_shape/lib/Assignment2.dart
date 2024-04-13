import 'package:flutter/material.dart';
class Assignment2 extends StatelessWidget{

  const Assignment2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container And Shape"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            // const SizedBox(
            //   height: 100,
            // ),
            Container(
              height: 100,
              width: 100,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  
                 gradient: const LinearGradient(
                  begin: Alignment.centerRight  ,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red,
                    Colors.blue

                  ],
                 
                 )
                  
              ),
             
              
            )
          ]
        )
      )
    );
  }
}
