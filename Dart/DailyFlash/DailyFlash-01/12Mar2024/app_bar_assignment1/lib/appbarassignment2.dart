
/*
  Create an AppBar, give color of your choice to the appbar and 
  the Icon at the start of appbar and 
  give the 3 icon at the end of appbar
 */
import 'package:flutter/material.dart';


class AppBarAssignment2 extends StatelessWidget{
   
   const AppBarAssignment2({super.key});

   @override
   Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
                    leading: IconButton(icon: const Icon(Icons.menu), onPressed: (){},),
                    centerTitle: true,
                    title: const Text("AppBar",
                    ),
                    actions: const [
                       Icon(Icons.search),
                       SizedBox(width:2),
                       Icon(Icons.delete),
                       SizedBox(width:2),
                       Icon(Icons.message),
                       SizedBox(width:2),
                    ],
                    backgroundColor: Colors.orange,
        
        ),
    );
   }
}