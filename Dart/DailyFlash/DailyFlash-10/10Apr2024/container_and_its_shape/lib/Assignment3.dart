import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Assignment3 extends StatelessWidget{

  const Assignment3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container And Shape"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Container(
              height: 100,
              width: 100,
              child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green, // First color: green
                    height: 40,
                  ),
                ),
                const SizedBox(width: 1), // Divider
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber, // Second color: amber
                    height: 40,
                  ),
                ),
              ],
              )
            ),
          ],

        )
      )
    );
  }
}
