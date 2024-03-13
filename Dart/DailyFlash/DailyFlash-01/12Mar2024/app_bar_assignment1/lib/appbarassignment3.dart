
/*
  Create an AppBar, give color of your choice to the appbar and 
  at bottom appbar should be rectangular rounded
 */
import 'package:flutter/material.dart';


class AppBarAssignment3 extends StatelessWidget{
   
   const AppBarAssignment3({super.key});

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
    );
   }
}