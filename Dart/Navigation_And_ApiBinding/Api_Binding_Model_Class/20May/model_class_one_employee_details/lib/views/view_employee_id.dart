import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

import 'package:model_class_one_employee_details/model/employee_id_model.dart';
class ViewEmployeeID extends StatefulWidget {
  const ViewEmployeeID({super.key});

  @override 
  State createState()=> _ViewEmployeeIDState();
}
class _ViewEmployeeIDState extends State{

   Map<String,dynamic> empData = {};
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Api Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Row(
          children: [
            Text("Employee Name : ${empData['employee_name']}"),
            const SizedBox(width:20),
            Text("Employee Salary : ${empData['employee_salary']}"),
            
          ],
        ),
    
    floatingActionButton: FloatingActionButton(
      onPressed: getEmployeeIDData,
      child: const Icon(Icons.add),
    )
    );
  }

  void getEmployeeIDData() async{
    Uri uri = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");
    http.Response response = await http.get(uri);
    
    var responseData = json.decode(response.body);

     
    log("$responseData"); // {status: success, data: {id: 1, employee_name: Tig…e: Successfully! Record has been fetched.}['data]
    log("${responseData['data']}"); // {id: 1, employee_name: Tiger Nixon, employee_salary: 320800, employee_age: 61, profile_image: }

    EmployeeModel empModel = EmployeeModel(responseData);

    setState(() {
      empData = empModel.data!;
    });

  }
}