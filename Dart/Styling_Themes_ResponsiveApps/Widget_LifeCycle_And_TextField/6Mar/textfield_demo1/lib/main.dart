import 'package:flutter/material.dart';
import 'package:textfield_demo1/dreamcompany.dart';
import 'package:textfield_demo1/lectureAssignment.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DreamCompany(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
class TextFieldDemo extends StatefulWidget{
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State{

  TextEditingController nameController = TextEditingController();

  void _printData(){
    print("CompanyName: ${nameController.text}");
  }
  @override
  void initState(){
    super.initState();

   nameController.addListener(_printData);
      }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFieldDemo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            //showCursor: true,
            controller: nameController,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.red)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30)
                )
              ),
              hintText: "Enter Company Name"
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value){
                print("OnChanged: $value");
            },

          ),

          const SizedBox(
            height: 20,
          ),

           TextField(
            //autofocus: true,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.yellow
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30)
                )
              ),
              hintText: "Enter Location"
            ),
            keyboardType: TextInputType.emailAddress,
            onSubmitted: (value){
              print("onSubmitted: $value");
            },

          ),
        ],
      ),
    );

  }
}