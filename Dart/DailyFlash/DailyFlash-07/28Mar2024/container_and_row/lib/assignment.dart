import 'package:flutter/material.dart';


class Assignment5 extends StatelessWidget{

  const Assignment5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : const Text("Container Assignment"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.purple,
                    ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    ),
                ),
            
                
            
              ],
            ),

          const SizedBox(
            height: 20,
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 100,
                    color: Colors.purple,
                    ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    ),
                ),
            
                
            
              ],
            ),

          const SizedBox(
            height: 20,
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.purple,
                    ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    ),
                ),
            
                
            
              ],
            ),



            
          ],
        ),
        ),
           
    );
  }
}