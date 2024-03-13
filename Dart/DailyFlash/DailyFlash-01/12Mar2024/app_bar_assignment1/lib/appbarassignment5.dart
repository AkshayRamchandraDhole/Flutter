
/*
  Create an screen, that will display the container in center of screen
  with size(300,300) with rounded corners give color to container 
  and container must have shadow with red color
 */
import 'package:flutter/material.dart';


class AppBarAssignment5 extends StatelessWidget{
   
   const AppBarAssignment5({super.key});

   @override
   Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
                    leading: IconButton(icon: const Icon(Icons.menu), onPressed: (){},),
                    centerTitle: true,
                    title: const Text("AppBar",
                    ),
                    backgroundColor: Colors.orange,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)
                      )
                    ),
        
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  
                  color: Colors.blue,  
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.red,
                     offset: Offset.zero,
                      spreadRadius: 10.0,
                      blurRadius: 15.0,
                    )
                  ]
                ),
              )
              ]),
        ),
    );
   }
}