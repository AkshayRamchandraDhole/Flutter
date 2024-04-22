import 'package:flutter/material.dart';

class FlutterCounter extends StatefulWidget{

  const FlutterCounter({super.key});

  @override
  State createState() => _FlutterCounterState();
}

class _FlutterCounterState extends State{

  int counter = 0;

  void incrementCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Java"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: incrementCounter, 
              child: const Text("Flutter")
              
              ),
              const SizedBox(
                width: 20,
              ),

              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5
                  )
                ),
                child: Text("$counter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15
                ),
                )
                
                )
                
          ],
        )
        
        ),
    );
  }
}