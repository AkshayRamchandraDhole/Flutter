import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
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
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, index) {
        return Row(
          children: [
            Text("Employee Name : ${empData['employee_name']}"),
            const SizedBox(width:20),
            Text("Employee Salary : ${empData['employee_salary']}"),
            const SizedBox(width:20),
            Text("Employee Id : ${empData['id']}")
          ],
        );
      }),
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
    // log("$response"); // Instance of 'Response'
   //log(response.body); // {"status":"success","data":{"id":1,"employee_name"…essage":"Successfully! Record has been fetched."}
   // log("${response.body}"); 
   
    //print(response.body); //{"status":"success","data":{"id":1,"employee_name"…essage":"Successfully! Record has been fetched."}

    var responseData = json.decode(response.body);

      //log("$responseData"); // {status: success, data: {id: 1, employee_name: Tig… message: Successfully! Record has been fetched.}
    // log("RESPONSE STATUS : ${responseData['status']}"); //  RESPONSE STATUS : success
  //  log("REPSONSE DATA BODY : ${responseData['body']}"); //REPSONSE DATA BODY : null

    //log("$responseData['data]"); // {status: success, data: {id: 1, employee_name: Tig…e: Successfully! Record has been fetched.}['data]
    log("${responseData['data']}"); // {id: 1, employee_name: Tiger Nixon, employee_salary: 320800, employee_age: 61, profile_image: }
    setState(() {
      empData = responseData['data'];
    });

  }
}