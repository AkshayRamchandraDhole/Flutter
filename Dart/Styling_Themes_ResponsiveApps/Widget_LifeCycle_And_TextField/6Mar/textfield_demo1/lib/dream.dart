import 'package:flutter/material.dart';

class DreamCompany extends StatefulWidget {
  const DreamCompany({Key? key}) : super(key: key);

  @override
  _DreamCompanyState createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State<DreamCompany> {
  TextEditingController companyNameController = TextEditingController();
  TextEditingController empNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  List<Map<String, String>> employeeDetailsList = [];

  void showEmpDetails() {
    setState(() {
      employeeDetailsList.add({
        'Name': empNameController.text,
        'Company Name': companyNameController.text,
        'Location': locationController.text,
      });
    });
  }

  void clearEmpDetails() {
    companyNameController.clear();
    empNameController.clear();
    locationController.clear();
    setState(() {
     // employeeDetailsList.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
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
            cursorColor: Colors.blue,
            controller: empNameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "Enter Name",
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
                  Radius.circular(30),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "Enter Company Name",
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
                  Radius.circular(30),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "Enter Location",
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
          ElevatedButton(
            onPressed: clearEmpDetails,
            child: const Text("Clear"),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: employeeDetailsList.length,
              itemBuilder: (context, index) {
                final details = employeeDetailsList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: details.entries
                      .map(
                        (entry) => Text(
                          "${entry.key}: ${entry.value}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
    );
  }
}