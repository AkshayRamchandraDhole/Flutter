import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiData extends StatefulWidget {
  const ApiData({super.key});

  @override
  State<ApiData> createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Bonding"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            
            onTap: () async{
              
              Uri url = Uri.parse('https://api.restful-api.dev/objects');

              http.Response responseData = await http.get(url);

              log(responseData.body);


            },
            child: const Text("GET DATA"),
          ),

          const SizedBox(
            height: 20,
          ),

          GestureDetector(
            
            onTap: () async{
              
              Uri url = Uri.parse('https://api.restful-api.dev/objects');

              Map data =  {
                            "name": "Real Me",
                           "data": {
                                  "year": 2024,
                                  "price": 16649.99,
                                  "CPU model": "Intel Core i9",
                                  "Hard disk size": "1 TB"
                                }
                          };

              http.Response responseData = await http.post(
                url,
                body: jsonEncode(data),
                headers: {
                  "content-type": "Application/json"
                }
              
              );

              log(responseData.body);


            },
            child: const Text("POST DATA"),
          ),

          const SizedBox(
            height: 20,
          ),

          GestureDetector(
            
            onTap: () async{
              
              Uri url = Uri.parse('https://api.restful-api.dev/objects/ff808181932badb60193fe1a9cbc2a77');

              http.Response responseData = await http.get(url);

              log(responseData.body);


            },
            child: const Text("GET DATA BY ID"),
          ),

        ],
      ),
    );
  }
}