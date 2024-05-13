import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN BUILD MYAPP");
    
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Employee(
              empName: "Kanha", 
            empCount: 250);
          }
          ),

          ChangeNotifierProvider(
            create: (context){
                return Project(
                    projectName: "HealthCare",
                    devType: "Backend Dev"
                );
          })
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyApp(),
      ),
      );
  }
}

class MyApp extends StatefulWidget{

  const MyApp({super.key});
  @override
  State createState() => _MyAppState();

}

class _MyAppState extends State{

  @override 
  Widget build(BuildContext context){
    log("IN MAIN APP BUILD");
    return Scaffold(
      appBar : AppBar(
        title: const Text("MultiProvide State Mgmt"),
        centerTitle: true,
        backgroundColor : Colors.blue,

      ),
      body: Column(
        children: [
          Text(Provider.of<Employee>(context).empName),

          const SizedBox(
            height: 30,
          ),

          Text("${Provider.of<Employee>(context).empCount}"),

          const SizedBox(
            height: 30,
          ),

           Text(Provider.of<Project>(context).projectName),

          const SizedBox(
            height: 30,
          ),

          Text(Provider.of<Project>(context).devType),

          const SizedBox(
            height: 30,
          ),

          ElevatedButton(onPressed: (){
              Provider.of<Project>(context, listen: false).changeProject("EdTech", "FrontEnd");
          }, 
          child: const Text("Change Value")),
          

        ],),
    );
  }
}


class Employee{
  String empName;
  int empCount;
  Employee({
    required this.empName,
    required this.empCount
  });
}

class Project with ChangeNotifier{
  String projectName;
  String devType;

   Project({
    required this.projectName,
    required this.devType
  });

  void changeProject(String projectName,String devType){
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}