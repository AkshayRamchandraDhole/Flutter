import 'package:flutter/material.dart';
import 'package:routing_using_named_routing/Screens/screen1.dart';
import 'package:routing_using_named_routing/Screens/screen2.dart';
import 'package:routing_using_named_routing/Screens/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/screen1":(context) {
          return const Screen1();
        },
        "/screen2":(context) {
          return const Screen2();
        },
        "/screen3":(context) {
          return const Screen3();
        } 
      },
      home: const HomeScreen(),
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
                  Navigator.of(context).pushNamed(
                    "/screen1"
                  );
                }, 
              child: const Text("Screen1"),
              ),
             
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                 Navigator.pushNamed(
                  context,
                  "/screen2");
                }, 
              child: const Text("Screen2"),
              ),
              
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                 Navigator.of(context).pushReplacementNamed("/screen3");
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