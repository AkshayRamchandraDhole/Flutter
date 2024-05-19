import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override 
  State createState()=> _ViewEmployeeState();
}
class _ViewEmployeeState extends State{

  List<dynamic> empData = [];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Api Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: empData.length,
        itemBuilder: ((context, index) {
        return Row(
          children: [
            Text(empData[index]['employee_name']),
            const SizedBox(width:20),
            Text("${empData[index]['employee_salary']}")
          ],
        );
      }),
      ),
    
    floatingActionButton: FloatingActionButton(
      onPressed: getEmployeeData,
      child: const Icon(Icons.add),
    )
    );
  }

  void getEmployeeData() async{
    Uri uri = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(uri);
    //log("${response}"); // Instance of 'Response'
   // log(response.body); // whole response
   // log("${response.body}"); 
   
    //print(response.body); whole response not in string

    var responseData = json.decode(response.body);

    // log("RESPONSE STATUS : ${responseData['status']}"); //  RESPONSE STATUS : success
    // log("REPSONSE DATA BODY : ${responseData['body']}"); //REPSONSE DATA BODY : null
    // log("NAME : ${responseData['data'][0]['employee_name']}"); // NAME : Tiger Nixon
    //log("$responseData"); // {status: success, data: [{id: 1, employee_name: Ti…age: Successfully! All records has been fetched.}
    //log("$responseData['data]"); // {status: success, data: [{id: 1, employee_name: Ti…ccessfully! All records has been fetched.}['data]

  log("${responseData['data']}");
    setState(() {
      empData = responseData['data'];
    });

  }
}