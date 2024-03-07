import "package:flutter/material.dart";

class DreamCompany extends StatefulWidget{

  const DreamCompany({super.key});

  @override
  State createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State{

  TextEditingController companyNameController = TextEditingController();
  TextEditingController empNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  bool showEmployeeDetails = false;

  void showEmpDetails(){
    showEmployeeDetails = true;
    setState(() {
        
    });
    

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DreamCompany"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          TextField(
           // showCursor: true,
          // autofocus: true,
            cursorColor: Colors.blue,
            controller: empNameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),  
                ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                hintText: "Enter Name"
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          TextField(
            controller: companyNameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30)
                ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                 hintText: "Enter Company Name"
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          TextField(
            controller: locationController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30)
                ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                 hintText: "Enter Location"
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          ElevatedButton(
           onPressed: showEmpDetails, 
            child: const Text("Submit"),
            ),

          const SizedBox(
            height: 20,
          ),

          if(showEmployeeDetails == true)
              Column(
                  children: [
                    Text("Name: ${empNameController.text}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text("Company Name: ${companyNameController.text}",
                          style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent
                      ),
                    ),
                     const SizedBox(height: 5),
                    Text("Location: ${locationController.text}",
                        style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                       color: Colors.purpleAccent
                      ),
                    )
                  ],
              )
          
          
        ],
        )
    );
  }
}