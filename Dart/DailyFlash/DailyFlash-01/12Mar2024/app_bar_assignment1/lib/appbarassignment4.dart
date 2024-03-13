
/*
  Create an screen, that will display the container in center of screen
  with size(300,300) the container must hav blue color an have border color red 
  give color of your choice to the appbar and 
  at bottom appbar should be rectangular rounded
 */
import 'package:flutter/material.dart';


class AppBarAssignment4 extends StatelessWidget{
   
   const AppBarAssignment4({super.key});

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
                //color: Colors.blue,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 5
                  ),
                  color: Colors.blue,  
                ),
              )
              ]),
        ),
    );
   }
}