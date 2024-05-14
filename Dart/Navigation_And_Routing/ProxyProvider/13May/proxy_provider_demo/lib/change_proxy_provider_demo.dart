import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';
class Login with ChangeNotifier{
  String userName;
  String password;

  Login({required this.userName,
        required this.password,
  });

  void changePassword(String password){
    this.password=password;
    notifyListeners();
  }
}

class Employee with ChangeNotifier{
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
class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MainApp build");
    return MultiProvider(
    
      providers:[
        ChangeNotifierProvider(create:(context){
            log("Login register");
          return Login(userName: "Kanha@12", password: "Kanha#1991");
        }),
        ChangeNotifierProxyProvider<Login,Employee>(
          create: (context){
            log("IN CREATE");
            return Employee(
              empId: 12,
             empName: "Kanhaiya", 
             userName:Provider.of<Login>(context,listen: false).userName, 
             password: Provider.of<Login>(context,listen: false).password);
          }, 
          update: (context,login,employee){
            log("IN UPDATE");
          return Employee(empId: 12,
             empName: "Kanhaiya", 
             userName: Provider.of<Login>(context).userName, 
             password: login.password);
        }),
        
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp1(),
      ),
    );
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
              Consumer<Login>(builder: (context,login,child){
                log("IN CONSUMER");
                  return Text(Provider.of<Login>(context).password);
              }),
              //Text(Provider.of<Login>(context).password),
              const SizedBox(height: 20,),
              Text("${Provider.of<Employee>(context).empId}"),
              const SizedBox(height: 20,),
              Text(Provider.of<Employee>(context).empName),
              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){
                  Provider.of<Login>(context,listen: false).changePassword("Kanha#2002");
                }, 
                child: const Text("Change Password"),
                )

            ],
          ),
        ),
    );
  }
}