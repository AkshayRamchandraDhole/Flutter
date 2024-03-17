import 'package:flutter/material.dart';
class ElevatedButtonAssignment2 extends StatelessWidget{
  const ElevatedButtonAssignment2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : const Text("Elevated Button")
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.red,
              width: 3,
            )
          ),
          child: 
            ElevatedButton(
              onPressed: (){}, 
              
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20)
              ),
              
              child: const Text("Click Me !")
              ),

         ),
      )
      ,
    );
  }
}
