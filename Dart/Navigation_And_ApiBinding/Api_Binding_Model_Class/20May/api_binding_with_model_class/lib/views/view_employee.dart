import 'dart:convert';
import 'package:api_binding_with_model_class/model/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override 
  State createState()=> _ViewEmployeeState();
}
class _ViewEmployeeState extends State{

  List<Data> empData = [];
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
            Text(empData[index].empName!),
            const SizedBox(width:20),
            Text("${empData[index].empSal!}")
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
    // adding the url from where we have to fetch the data 
    Uri uri = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    // then calling get call 
    http.Response response = await http.get(uri);
 
  // transferring the repsone to JSON format 
    var responseData = json.decode(response.body);

  // logging the response 
  log("${responseData['data']}");

  // adding the response in to model class 
  EmployeeModel empModel = EmployeeModel(responseData);

    setState(() {
      empData = empModel.data!;
    });

  }
}