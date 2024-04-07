import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{

  const Assignment3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash-08"),
        backgroundColor: Colors.white,
        shape: Border.all(
          width: 0.5
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
               border: Border.all(
                 width: 1.0
               ),
              borderRadius: BorderRadius.circular(20),
             color: Colors.white10
          ),
          //color: Colors.black,

          child: Row(
            children: [
              const SizedBox(
                  width: 70,
              ),
              Container(
                height: 100,
                width: 66,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0
                  ),
                  color: Colors.white10
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}