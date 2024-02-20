import "package:flutter/material.dart";
import 'colLecCode1.dart';
import 'conLecCode3.dart';
import 'rowLecCode2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      home : RowLectureCode()
    );
  }
}