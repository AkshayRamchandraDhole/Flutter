import 'package:flutter/material.dart';
class ElevatedButtonAssignment3 extends StatelessWidget{
  const ElevatedButtonAssignment3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : const Text("Floating Action Button"
        ),

      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
    
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        
                children: [
        Icon(Icons.person),
        //SizedBox(width:1,),
        Text("Akshay")
      ],),

      
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
    );
  }
}
