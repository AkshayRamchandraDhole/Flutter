import 'package:flutter/material.dart';
import 'package:navigator_and_named_routing_demo/Screens/screen1.dart';
import 'package:navigator_and_named_routing_demo/Screens/screen2.dart';
import 'package:navigator_and_named_routing_demo/Screens/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
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
                    return const Screen1();
                  }));
                }, 
              child: const Text("Screen1"),
              ),
             
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context){
                      return const Screen2();
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
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context){
                      return const Screen3();
                    })
                    );
                }, 
              child: const Text("Screen3"),
              ),
              const SizedBox(
                height: 20,
              ),
          ],
        ),
      )
    );
  }
}