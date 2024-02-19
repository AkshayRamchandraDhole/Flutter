import "package:flutter/material.dart";
import 'assignment1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        title: "Stateless App",
        debugShowCheckedModeBanner: false,
        color: Colors.red,

        home: Assignment1(),

    );
  }
}