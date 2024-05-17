import 'package:flutter/material.dart';
class Screen3 extends StatelessWidget{
  const Screen3({super.key});

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
                 // Navigator.of(context).popAndPushNamed("/screen1");
                }, 
              child: const Text("Screen3"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, 
              child: const Text("Previous Screen"),
              ),
    
          ],
        ),
      )
    );
  }

}