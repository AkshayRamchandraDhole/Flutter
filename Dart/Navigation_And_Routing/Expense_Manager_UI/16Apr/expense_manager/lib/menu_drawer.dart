import 'package:flutter/material.dart';

import 'grid_view.dart';
class DrawerScreen extends StatefulWidget{
  const DrawerScreen({super.key});

  @override 
   @override
  State createState() => _DrawerScreenState(); 
}
class _DrawerScreenState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu,)),
        title: const Text("Category"),
      ),
      drawer:  Drawer(
        child:  Column(
          children:  [
            const  SizedBox(
                  height: 20,
              ),
             const Text(
              "Expense Manager",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
               
            ),
           const  SizedBox(
            width: 20,
                  height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                      
                      
                    ),
                    child: const Text("Transaction"),
                  )
                ],
                
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                      
                      
                    ),
                    child: const Text("Graphs"),
                  )
                ],
              ),
               Row(
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                      
                    ),
                    child: const Text("Category"),
                  )
                ],
              ),
               Row(
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                      
                    ),
                    child: const Text("Trash"),
                  )
                ],
              ),
               Row(
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                      
                    ),
                    child: const Text("About us"),
                  )
                ],
              ),

              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GridViewScreen())
                  );
                }, 
                child: const Text("Click Me"))
          ],
        ),
      ),
    );
  }
}