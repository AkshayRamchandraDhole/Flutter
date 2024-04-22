import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override 
  State createState() => _MainAppState();
}

class _MainAppState extends State{

  String companyName = "Google";
  int empCount = 250;

  @override
  Widget build(BuildContext context) {
    return Company(
      companyName: companyName,
      empCount: empCount,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Inherited Widget Demo"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CompanyData(),

              const SizedBox(
                height: 60,
              ),

              GestureDetector(
                onTap: (){
                  setState(() {
                    companyName = "NVIDIA";
                    empCount++;

                  });
                },

                child: const Text("Change Company"),
              )
          ],),
        ),

      ),
    );
  }
}

class CompanyData extends StatelessWidget{
  const CompanyData({super.key});

  @override 
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Company.of(context).companyName),


        const SizedBox(
          width: 20,
        ),

        Text("${Company.of(context).empCount}"),
      ],
    );
  }
}


class Company extends InheritedWidget{

 final String companyName;
  final int empCount;
  const Company({
    super.key,
    required this.companyName,
    required this.empCount,
    required super.child
  });

  static Company of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }

  @override 
  bool updateShouldNotify(Company oldWidget){
    return companyName != oldWidget.companyName || empCount != oldWidget.empCount;
  }

}