import 'package:flutter/material.dart';

import 'alert_box.dart';
class GridViewScreen extends StatefulWidget{
  const GridViewScreen({super.key});

  @override 
   @override
  State createState() => _GridViewScreenState(); 
}
class _GridViewScreenState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          //childAspectRatio: 0.6
          ),
          itemCount: 4,
         itemBuilder: (context, index) {
           return Container(
            height: 100,
            width: 100,
              color: Colors.black,
           );
         }),
         floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AlertBoxScreen())
                  );
         }
         )
    );
  }
}