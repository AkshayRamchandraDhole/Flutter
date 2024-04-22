import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'pie_chart.dart';
class AlertBoxScreen extends StatefulWidget{
  const AlertBoxScreen({super.key});

  @override 
   @override
  State createState() => _AlertBoxScreenState(); 
}
class _AlertBoxScreenState extends State{

  Future<dynamic> showMyDialog() async{
      return await showDialog(
        context: context, 
       // barrierColor: Colors.black54,
       // barrierDismissible: true,
        builder: (BuildContext context) {
          return Container(
            height: 163,
            width: 294,
            decoration: const BoxDecoration(
              boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    spreadRadius: 0.0,
                    offset: Offset(1,2),
                    color: Color.fromRGBO(0, 0, 0, 0.15)
                    
                  )
            ]),
            child: AlertDialog(
              
                title:  const Text("Delete Confirmation",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 24,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                ),
                

                content: const  Text("Are you sure you want to delete the  selected category?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 18,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed:(){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const PieChartScreen())
                        );
                  } ,
                  style: const ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(
                        Color.fromRGBO(14, 161, 125, 1)
                    )
                  ),
                  child: const Text("Delete")
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed:(){
                        Navigator.of(context).pop();
                  } ,
                  child: const Text("Cancel")
                  )
                ],
            ),
          );
        } 
        );
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
         child:  Text("Incubator")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showMyDialog();
          },
          child: const Text("Delete"),
        ),
    );
  }
}