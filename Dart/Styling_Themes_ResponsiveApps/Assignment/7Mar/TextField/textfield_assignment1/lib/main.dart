import 'package:flutter/material.dart';

void main() {
  runApp(const TextFieldAssignment());
}

class TextFieldAssignment extends StatelessWidget {
  const TextFieldAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    title: "TextFieldDemo",
    home: MyHomePage(title: "Add Names"),
    );
  }
}

class MyHomePage extends StatefulWidget{

  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State createState() => _MyHomePageState();

}

class _MyHomePageState extends State{

  final TextEditingController _namesTextEditingController = TextEditingController();
  final FocusNode _nameFocusMode = FocusNode();


  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("TextFieldAssignment"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _namesTextEditingController,
            focusNode: _nameFocusMode,

            decoration: InputDecoration(
              hintText: "Enter Name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: Colors.blue)

              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.pink)
                
                ),

              
            ),
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value){
                print("Value: $value");
            },
            onSubmitted: (value){
              print("Data Submitted: $value");
            },
          )
        ]),
    );
  }
}