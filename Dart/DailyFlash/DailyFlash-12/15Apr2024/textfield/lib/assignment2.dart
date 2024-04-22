import 'dart:html';

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{

  const Assignment2({super.key});

  @override 
  State createState() => _Assignment2State();
}

class _Assignment2State extends State{

  
  TextEditingController _controller = TextEditingController();
  List<String> _weekday = [];

  void _addedList(String weekday){
      setState(() {
        _weekday.add(weekday);
        _controller.clear();
      });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash-12"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _controller,
              onSubmitted: _addedList,
              decoration: InputDecoration(
                labelText: "Enter weekday....",
               // hintText: "Enter weekday....",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                
              ),
              
            ),
            ),
            const SizedBox(
              height: 50,
            ),
          
                Expanded(
                  child: ListView.builder(
                    itemCount: _weekday.length,
                    itemBuilder: (context,index){
                        return ListTile(
                          title: Text(_weekday[index]),
                        );
                    }
                    )
                  
                  ),
              
        ],
      ),

    );
  }
}