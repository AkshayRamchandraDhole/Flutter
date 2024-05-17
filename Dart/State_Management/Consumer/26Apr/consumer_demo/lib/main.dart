import 'dart:developer';

import 'package:consumer_demo/practices_example.dart';
import 'package:consumer_demo/try.dart';
import 'package:consumer_demo/two_consumer_try.dart';
import 'package:flutter/material.dart';
import "package:provider/provider.dart";


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP BUILD");
    return MultiProvider(
      providers: [
         Provider(
          create: (context){
            return Player(
              playerName: "Virat",
              jerNo: 18
            );
          }
        ),
        ChangeNotifierProvider(
          create: (context){
            return Match(
              matchCount: 250,
              runs: 8000
            );
          })

      ],
      child: const MaterialApp(
        home: MatchSummary(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Player{
  String playerName;
  int jerNo;

  Player({required this.playerName,required this.jerNo});
}
class Match with ChangeNotifier{
  int matchCount;
  int runs;

  Match({required this.matchCount,required this.runs});

  void changeData(int matchCount,int runs){
    this.matchCount = matchCount;
    this.runs = runs;
    notifyListeners();
  }
}

class MatchSummary extends StatefulWidget{

  const MatchSummary({super.key});

  @override 
  State createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State{

  @override
  Widget build(BuildContext context){
    log("IN MATCHSUMMARY BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer Demo"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:  Column(
        children: [
          Text(Provider.of<Player>(context).playerName),
          const SizedBox(height: 50),
          Text("${Provider.of<Player>(context).jerNo}"),
          const SizedBox(height: 50,),

          Consumer<Match>(
            builder: (context,provider,child){
              log("IN CONSUMER");
              return Column(
                children: [
                    Text("${Provider.of<Match>(context).matchCount}"),
                    const SizedBox(height: 50),
                    Text("${Provider.of<Match>(context).runs}"),
                    const SizedBox(height: 50,),
                ],
              );
              

            }
            ),
          

          ElevatedButton(
            onPressed: (){
                Provider.of<Match>(context, listen: false).changeData(300, 10000);
          }, 
          child: const Text("Change Date"),
          ),
          const NormalClass()

        ],
        ),
    );
  }
}

class NormalClass extends StatelessWidget{

  const NormalClass({super.key});

  @override 
  Widget build(BuildContext context){
    log("IN NORMALCLASS BUILD");
    //return const Text("hello");
    //return Text("${Provider.of<Match>(context).matchCount}");
    return Consumer(
      
      builder: (context,value,child){
        log("IN NORMALCLASS CONSUMER");
        return Text("${Provider.of<Match>(context).matchCount}");
       //return const Text("hello");
      });
  }
}