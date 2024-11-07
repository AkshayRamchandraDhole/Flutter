import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp1());
}

class MainApp1 extends StatefulWidget {
   const MainApp1({super.key});

   @override
   State<MainApp1> createState() => _MainApp1State();
}
class _MainApp1State extends State<MainApp1>{


  String? myName;
  TextEditingController nameController = TextEditingController();
  List<String> playerList= [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:  Column(
          children: [
            const SizedBox(
              height: 20,
            ),
             TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 20
              ),
              decoration: const InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
                ),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
              onTap: (){
                print("Add Data");
                myName = nameController.text.trim();
                if(myName !=""){
                playerList.add(myName!);
                print("Playerlist length: ${playerList.length}");
                print("MyName : $myName");
                nameController.clear();
                setState((){});
              }
              },
            ),

            const SizedBox(
              height: 40,
            ),
            ListView.builder(
              itemCount: playerList.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
              return Text(
                    "Name: ${playerList[index]}",
                    style: const TextStyle(
                    fontSize: 20,
                    ),
                  );
            })
          ],
        ),
      ),
    );
  }
  
  
}
