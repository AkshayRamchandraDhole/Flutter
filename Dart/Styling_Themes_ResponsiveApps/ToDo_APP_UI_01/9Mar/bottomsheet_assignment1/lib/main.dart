import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar : AppBar(
          title : const Text("BottomSheet Assignment")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                         const  Text("Create Task"),
                
                          const TextField(
                
                            decoration: InputDecoration(
                              border:  OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              )
                              ),
                              hintText: "Enter Title"
                            ),
                          ),

                          const TextField(
                
                            decoration: InputDecoration(
                              border:  OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              )
                              ),
                              hintText: "Enter Description"
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){}, 
                            child: const Text("Submit") 
                            ),
                  ]
                );

              }
              );
          }
        ),
       ),
    );
  }
}