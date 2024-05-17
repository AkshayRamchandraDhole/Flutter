import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP1 BUILD");
    return ChangeNotifierProvider(
      create: (context){
        return Company(
          companyName: "Google",
          empCount: 250,
        );
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp1(),
      ),
      );
  }
}

class Company extends ChangeNotifier{
  
  String companyName;
  int empCount;

  Company({
   required this.companyName,
    required this.empCount
  });
  void changeCompany(String companyName,int empCount){
    this.companyName=companyName;
    this.empCount=empCount;
    notifyListeners();
}
}
class MyApp1 extends StatefulWidget{
  const MyApp1({super.key});

  @override 
  State createState() => _MyApp1State();
}

class _MyApp1State extends State{

  @override
  Widget build(BuildContext context){
    log("IN _MYAPPSTATE BUILD");
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
          ElevatedButton(
            onPressed: (){
                Provider.of<Company>(context,listen: false).changeCompany("Facebook", 500);
          },
           child: const Text("Change Value"),
           ),
          const SizedBox(height: 20,),
         // Text(Provider.of<Company>(context).companyName)
         NormalClass(),
        
        ],),
        
    );
  }
}
class NormalClass extends StatelessWidget{

  const NormalClass({super.key});

  @override 
  Widget build(BuildContext context){
    log("IN NORMALCLASS BUILD");
    return const Text("Hello");
  }
}