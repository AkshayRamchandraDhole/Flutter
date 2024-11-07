import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_ui/get_Cart.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          title: Text("To-Do list",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(255, 255, 255, 1),
            
          ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return getCart(index,);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
          shape: const CircleBorder(),
          onPressed: (){},
          child: const Icon(Icons.add_circle_outline_outlined,
            size: 55,
            color: Color.fromRGBO(255, 255, 255, 1)
          ),
          
          ),
      ),
    );
  }
}
