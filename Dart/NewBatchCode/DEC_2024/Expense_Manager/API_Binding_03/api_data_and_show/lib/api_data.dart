import 'dart:convert';
import 'dart:developer';

import 'package:api_data_and_show/all_device_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiData extends StatefulWidget {
  const ApiData({super.key});

  @override
  State<ApiData> createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {

  void getAllDeviceData() async{
    Uri url = Uri.parse("https://api.restful-api.dev/objects");

    http.Response responseData = await http.get(url);

    log(responseData.body);

    List<dynamic> jsonData = jsonDecode(responseData.body);

    // if(context.mounted){
    //   Navigator.push(context, MaterialPageRoute(builder: (context){
    //      return AllDeviceData(deviceData : jsonData);
    //   }));
    // }
  }

  void postDeviceData() async{

    Uri url = Uri.parse('https://api.restful-api.dev/objects');

    Map data = {
              "name" : "Real Me XT",
              "data" : {
                  "year" : 2020,
                  "price" : 16000.00,
                  "CPU Model" : "i5",
                  "HArd disk size" : "64 GB"
              } 
          };
      
      http.Response responseData = await http.post(
        url,
        body: jsonEncode(data),
        headers: {
          "content-type" : "Application/json",
        },
      );

      log(responseData.body);

  }

  void getDeviceDataById() async{
    Uri url = Uri.parse("https://api.restful-api.dev/objects?id=3&id=5&id=10");

    http.Response responseData = await http.get(url);

    log(responseData.body);

    List<dynamic> jsonData = jsonDecode(responseData.body);

    // if(context.mounted){
    //   Navigator.push(context, MaterialPageRoute(builder: (context){
    //      return AllDeviceData(deviceData : jsonData);
    //   }));
    // }
  }

  void getDeviceSingleData() async{

      Uri url = Uri.parse("https://api.restful-api.dev/objects/ff808181932badb60193fe68a6002b3b");

      http.Response responseData  = await http.get(url);

      log(responseData.body);

      Map jsonData = jsonDecode(responseData.body);

    if(context.mounted){
      Navigator.push(context, MaterialPageRoute(builder: (context){
         return AllDeviceData(deviceData : jsonData);
      }));
    }

      

  }

  void updateDeviceData() async{

    Uri url = Uri.parse('https://api.restful-api.dev/objects/ff808181932badb60193fe68a6002b3b');

    Map data = {
              "name" : "Real Me XT",
              "data" : {
                  "year" : 2024,
                  "price" : 19000.00,
                  "CPU Model" : "i5",
                  "HArd disk size" : "64 GB"
              } 
          };
      
      http.Response responseData = await http.put(
        url,
        body: jsonEncode(data),
        headers: {
          "content-type" : "Application/json",
        },
      );

      log(responseData.body);

  }

  void deleteDeviceData() async{

    Uri url = Uri.parse('https://api.restful-api.dev/objects/ff808181932badb60193fe68a6002b3b');

    http.Response responseData = await http.delete(url);
    log(responseData.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Binding"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(

        child: Column(

          children: [
            ElevatedButton(
              onPressed: getAllDeviceData, 
              child: const Text("GET ALL DATA")
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
              onPressed: postDeviceData, 
              child: const Text("POST DEVICE DATA")
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
              onPressed: getDeviceDataById, 
              child: const Text("GET DEVICE DATA BY IDS")
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
              onPressed: getDeviceSingleData, 
              child: const Text("GET SINGLE DEVICE DATA")
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
              onPressed: updateDeviceData, 
              child: const Text("UPDATE SINGLE DEVICE DATA")
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
              onPressed: deleteDeviceData, 
              child: const Text("DELETE SINGLE DEVICE DATA")
              ),

              const SizedBox(
                height: 20,
              ),
          ],
        ),
      ),
    );
  }
}