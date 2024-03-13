// ignore: file_names

/*
  Create an AppBar, give the Icon at the start of appbar and 
  five title in the middle of that and 
  give the icon at the end of appbar
 */
import 'package:flutter/material.dart';

// ignore: camel_case_types
class appBarAssignment1 extends StatelessWidget{
   
   const appBarAssignment1({super.key});

   @override
   Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
                    leading: IconButton(icon: const Icon(Icons.menu), onPressed: (){},),
                    centerTitle: true,
                    title: const Text("AppBar"),
                    actions: const [
                       Icon(Icons.search)
                    ],
        
        ),
    );
   }
}