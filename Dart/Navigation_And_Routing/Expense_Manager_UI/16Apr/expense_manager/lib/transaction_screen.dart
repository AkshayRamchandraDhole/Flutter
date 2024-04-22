import 'package:flutter/material.dart';

import 'menu_drawer.dart';

class TransactionScreen extends StatefulWidget{
  const TransactionScreen({super.key});

  @override 
   @override
  State createState() => _TransactionScreenState(); 
}
class _TransactionScreenState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              
              onPressed: () {
                Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const DrawerScreen())
                          );
                      
              },
              icon: const Icon(Icons.menu,)
              ),
            title: const Text("June 2022",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(33, 33, 33, 1),
            ),
            ),
            actions: const [
              Icon(Icons.search)
            ],
              
              ),
    );
  }
}