import 'package:flutter/material.dart';

import 'aspectratio.dart';
import 'listview.dart';

void main() {
  runApp(MainApp2());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

   @override
   State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp>{
  String? myName;
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:  Column(
          children: [
            const SizedBox(
              height: 20,
            ),
             TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 20
              ),
              decoration: const InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
                ),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
              onTap: (){
                print("Add Data");
                myName = nameController.text;
                print("MyName : $myName");
                nameController.clear();
                setState((){});
              },
            ),

            const SizedBox(
              height: 40,
            ),
            Text("Name: $myName",
            style: const TextStyle(
              fontSize: 20,
            ),
            )
          ],
        ),
      ),
    );
  }
  
  
}
