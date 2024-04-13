import 'package:flutter/material.dart';
class Assignment5 extends StatelessWidget{

  const Assignment5({super.key});

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
               decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(3,3),
                      spreadRadius: 0.5
                    )
                  ],
                  
                 gradient:  LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.blue,
                    Colors.purple,
                    Colors.green

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
