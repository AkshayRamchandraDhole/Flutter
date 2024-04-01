import 'package:flutter/material.dart';


class Assignment3 extends StatelessWidget{

  const Assignment3({super.key});

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
            Container(
              
              height: 50,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.red,
                
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3)
                  )
                ]
                
                ),
                
              
                    
              ),

              const SizedBox(width: 50),

              Container(
             
              height: 50,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)

                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 7,
                  )
                ]
                
                ),
              
                    
              ),


          ],
        ),
        ),
           
    );
  }
}