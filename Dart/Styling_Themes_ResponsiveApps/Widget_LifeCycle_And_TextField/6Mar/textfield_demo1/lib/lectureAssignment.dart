import 'package:flutter/material.dart';

class LectureAssignmentDemo extends StatefulWidget{

const LectureAssignmentDemo({super.key});
  @override
  State createState() => _LectureAssignmentDemoState();
}

class _LectureAssignmentDemoState extends State{

  TextEditingController companyNameController = TextEditingController();
  TextEditingController empNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  bool showEmployeeDetails = false;

  void showEmpDetails(){
    
    setState(() {
        showEmployeeDetails = true;
    });
  @override
  void initState(){
    super.initState();
    print("In initState()");
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print("In didChangeDepencies()");
  }
  @override
  void didUpdateWidget(oldWidget) { 
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget()");
  }
  @override
  void deactivate() { 
    super.deactivate();
    print("In deactivate()");
  }

  @override
  void dispose(){
    super.dispose();
    print("In dispose()");
  }
  
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

            controller: empNameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30)
                ),
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text("Company Name: ${companyNameController.text}",
                          style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                     const SizedBox(height: 5),
                    Text("Location: ${locationController.text}",
                        style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
              )
          
          
        ],
        )
    );
  }
}