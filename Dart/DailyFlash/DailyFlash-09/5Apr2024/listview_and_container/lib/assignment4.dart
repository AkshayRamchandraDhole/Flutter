import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{

  const Assignment4({super.key});

  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State{

  final _username = TextEditingController();
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:  Center(
        child: Column(
          
         mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5
                ) ,
                ),
              child: TextField(
                
                controller: _username,
                decoration: InputDecoration(
                  hintText: "Enter username",
                  filled: true,
                  fillColor: Colors.purple,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(10)
                ),
                
              
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: (){}, 
            child: Text("Submit"))

          ],
          )
          ),
    );
  }
}