import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  const Screen1({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("NavigatorDemo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/screen2");
                }, 
              child: const Text("Screen1"),
              ),
             
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                }, 
              child: const Text("Previous Screen"),
              ),
              
             
          ],
        ),
      )
    );
  }

}