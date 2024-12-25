import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyTextField(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyTextField extends StatefulWidget {
   const MyTextField({super.key});

   @override
   State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField>{
  String? myName;
  String? company;
  TextEditingController nameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  List<Map<String,String>> info = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INFO"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
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
          ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: companyController,
                style: const TextStyle(
                  fontSize: 20
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Dream Company",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey
                  ),
                  border: OutlineInputBorder()
                ),
              ),
            ),

            GestureDetector(
              child: Container(
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(10.0),
              ),
              onTap: (){
                myName = nameController.text;
                company = companyController.text;

                info.add({"first": myName!,"second": company!});
                nameController.clear();
                companyController.clear();
                setState(() {
                  
                });
              },
            ),

            ListView.builder(
              itemCount: info.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: ${info[index]["first"]}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("CompanyName: ${info[index]["second"]}",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                      
                  ),
                );
              })
        ]
      )
      
    );
  }
}