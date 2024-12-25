

import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllDeviceData extends StatelessWidget {
  // List<dynamic> deviceData = [];
  Map deviceData = {};

  AllDeviceData({
    super.key,
    required this.deviceData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      // body: ListView.builder(
      //   itemCount: deviceData.length,
      //   itemBuilder: (context, index){
      //   return Row(
      //     children: [
      //       Text(deviceData[index]['id']),
      //       const SizedBox(width: 20,),
      //       Text(deviceData[index]['name']),
      //     ],
      //   );
      // }),
      body: Row(
        children: [
          Text(deviceData['id']),
          const SizedBox(width: 20,),
          Text(deviceData['name'])
        ],
      ),
    );
  }
}