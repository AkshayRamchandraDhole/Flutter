import 'package:flutter/material.dart';
class Assignment4 extends StatelessWidget{

  const Assignment4({super.key});

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
                  boxShadow: const[
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(3,3),
                      spreadRadius: 0.5
                    )
                  ],
                  
                 gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.blue,
                    Colors.purple

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
