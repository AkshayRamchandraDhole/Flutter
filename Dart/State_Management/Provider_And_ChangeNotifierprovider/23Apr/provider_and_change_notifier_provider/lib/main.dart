
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'change_notifier_provider.dart';

void main() {
  runApp(const MainApp1());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context){
        return Company(
          companyName: "Google",
          empCount: 250,
        );
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
      );
  }
}

class Company {
  
  String companyName;
  int empCount;

  Company({
   required this.companyName,
    required this.empCount
  });

}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override 
  State createState() => _MyAppState();
}

class _MyAppState extends State{

  @override
  Widget build(BuildContext context){
    // log(Company.companyName);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider State Mgmt"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
         Text(Provider.of<Company>(context).companyName),
          const SizedBox(height: 20,),
          Text("${Provider.of<Company>(context).empCount}"),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              //Provider.of<Company>(context).companyName = "PTC";
           // setState(() {
           //    Company.companyName = "PTC";
          //   }); 
                
              
            },
            child: const Text("Change Value"),
            
          ),
          const SizedBox(height: 20,),
         // Text(Provider.of<Company>(context).companyName)
        
        ],),
        
    );
  }
}