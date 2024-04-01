import 'package:flutter/material.dart';


class Assignment2 extends StatelessWidget{

  const Assignment2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : const Text("Container Assignment"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body:Center(
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1
            ),
            borderRadius: BorderRadius.circular(10)
            
            ),
          child: const Row(
            children: [
               Icon(
                  Icons.star,
                  color: Colors.orange,   
                ),
                SizedBox(width: 5),
                Text("Rating 4.5",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                )
                
            ],
          ),
        )
        
        
        )
        
        
    );
  }
}