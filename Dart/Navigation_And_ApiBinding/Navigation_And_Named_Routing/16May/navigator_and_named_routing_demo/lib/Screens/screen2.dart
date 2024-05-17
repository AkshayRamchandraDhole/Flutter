import 'package:flutter/material.dart';
import 'package:navigator_and_named_routing_demo/Screens/screen3.dart';
class Screen2 extends StatelessWidget{
  const Screen2({super.key});

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
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context){
                      return const Screen3();
                    })
                  );
                }, 
              child: const Text("Screen2"),
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