import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

List cardColorList = [
  Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(250,249,232,1)
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ToDo APP"),
        ),
        body: Padding(
          padding:const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {

              return Container(
                height: 112,
                width: 330,
                color: cardColorList[index % cardColorList.length],
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                        
                            )
                           ),
                        //child: Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F1f%2F3f%2F4c%2F1f3f4ce973d946578567f190e2773709.png&f=1&nofb=1&ipt=1e663c614cae60207683d0802321d1ff8ec9c95e566fcc5cf575eef1adb9023a&ipo=images"),

                        ),
                      const SizedBox(
                            width: 3,
                      ),
                      const Expanded(
                        child: Column(
                          children:  [
                            Row(
                              children: [
                                 Text("row1"),
                              ],

                            ),
                            SizedBox(
                                  height: 5,
                                 // width: 5,
                                ),
                            Row(
                                children: [
                                   Text("row2") 
                                ],
                            )
                          ],
                        ),
                      )
                      ],
                    ),
                    const Row(
                        children: [
                          Text("enter Date"),
                          Spacer(),
                         
                        ],
                    ),

                  ]),

              );
            
            }
              
            )

        )
      ),
    );
  }
}
