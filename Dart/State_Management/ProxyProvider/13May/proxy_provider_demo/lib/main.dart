import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

import 'package:proxy_provider_demo/change_proxy_provider_demo.dart';

void main() {
  runApp(const MainApp1());
}
class Login{
  String userName;
  String password;

  Login({required this.userName,
        required this.password,
  });
}

class Employee{
  int empId;
  String empName;
  String userName;
  String password;

  Employee({
    required this.empId,
    required this.empName,
    required this.userName,
    required this.password
  });
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MainApp build");
    return MultiProvider(
    
      providers:[
        Provider(create: (context){
          log("Login register");
          return Login(userName: "Kanha@12", password: "Kanha#1991");
        }),
        ProxyProvider<Login,Employee>(
          update: (context, login, employee) {
            log("Employee register");
            return Employee(empId: 12,
             empName: "Kanhaiya", 
             userName: Provider.of<Login>(context).userName, 
             password: login.password);
          },)
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
    log("In MyApp build");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Proxy Provider"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              Text(Provider.of<Login>(context).userName),
              const SizedBox(height: 20,),
              Text(Provider.of<Login>(context).password),
              const SizedBox(height: 20,),
              Text("${Provider.of<Employee>(context).empId}"),
              const SizedBox(height: 20,),
              Text(Provider.of<Employee>(context).empName),
              const SizedBox(height: 20,),

            ],
          ),
        ),
    );
  }
}