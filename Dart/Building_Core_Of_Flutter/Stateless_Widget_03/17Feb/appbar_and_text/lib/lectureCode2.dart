import "package:flutter/material.dart";

class LectureCode2 extends StatelessWidget{
  const LectureCode2({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless MyAPP",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
        ),
        centerTitle: true,
        actions: const[
          Icon(Icons.notifications),
          Icon(Icons.favorite),
        ],
      ),
      body: SizedBox(

          height: double.infinity,
          width: double.infinity,

        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
        
      ),
    );
  }
}