import 'package:flutter/material.dart';
import 'package:navigator_and_named_routing_demo/Screens/screen2.dart';
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
                  Navigator.push(context, 
                  MaterialPageRoute(builder:(context) {
                    return const Screen2();
                  }));
                }, 
              child: const Text("Screen1"),
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