import "package:flutter/material.dart";

class LectureCode3 extends StatelessWidget{
  const LectureCode3({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: const Text("Stateless MyAPP"),
        centerTitle: true,
        actions: const[
          Icon(Icons.notification_add),
          Icon(Icons.favorite),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
            
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
      
            ),
          ],
        ),
      )

    );
  }

}