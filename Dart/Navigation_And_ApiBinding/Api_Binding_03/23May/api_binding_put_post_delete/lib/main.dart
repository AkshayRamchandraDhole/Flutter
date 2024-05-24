import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: deleteEmployeeData,
            child: const Text("EmployeeData"),
          ),
        ),
      ),
    );
  }

  void postEmployeeData() async{
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/create");
    Map<String,String> postData = {
      'name' : "Akshay Dhole",
      'aga': "25",
      'salary': "30000"
    };
    http.Response response = await http.post(url, body : postData);
    
    log("$response"); // Instance of 'Response'

    log(response.body); // {"status":"success","data":{"name":"Akshay Dhole",…"message":"Successfully! Record has been added."}

    var jsonData = json.decode(response.body);
    log("$jsonData");
    log(jsonData['message']); //Successfully! Record has been added.
    log(jsonData['data']['name']); // Akshay Dhole
    
  }

  void putEmployeeData() async{
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/update/21");
    Map<String,String> putEmployeeData = {
        'name': "Gaurav Dhole",
        'salary': "20000",
        'age': "29"
    };
    http.Response response = await http.put(url,body: putEmployeeData);

    log(response.body); //{"status":"success","data":{"name":"Gaurav Dhole",…essage":"Successfully! Record has been updated."}

    var jsonData = json.decode(response.body); // {status: success, data: {name: Gaurav Dhole, salar… message: Successfully! Record has been updated.}

    log("$jsonData");
  }
  
  void deleteEmployeeData() async{

    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/2");

    http.Response response = await http.delete(url);

    log(response.body);    //{"status":"success","data":"2","message":"Successfully! Record has been deleted"}

    var jsonData = json.decode(response.body);

    log("$jsonData"); //{status: success, data: 2, message: Successfully! Record has been deleted}
  }
}
