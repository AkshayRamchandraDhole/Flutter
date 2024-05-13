import 'dart:developer';

import 'package:flutter/material.dart';
import "package:provider/provider.dart";


class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP BUILD");
    return MultiProvider(
      providers: [
         Provider(
          create: (context){
            return Mobile(
              mobileName: "RealMe",
              price: 18000
            );
          }
        ),
        ChangeNotifierProvider(
          create: (context){
            return MusicPlayer(
              musicPlayerName: "Savan",
              musicListCount: 900
            );
          })

      ],
      child: const MaterialApp(
        home: MobileCollection(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Mobile{
  String mobileName;
  int price;

  Mobile({required this.mobileName,required this.price});
}
class MusicPlayer with ChangeNotifier{
  String musicPlayerName;
  int musicListCount;

  MusicPlayer({required this.musicPlayerName,required this.musicListCount});

  void changeData(String musicPlayerName,int musicListCount){
    this.musicPlayerName = musicPlayerName;
    this.musicListCount = musicListCount;
    notifyListeners();
  }
}

class MobileCollection extends StatefulWidget{

  const MobileCollection({super.key});

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
          Text(Provider.of<Mobile>(context).mobileName),
          const SizedBox(height: 50),
          Text("${Provider.of<Mobile>(context).price}"),
          const SizedBox(height: 50,),

          Consumer<MusicPlayer>(
            builder: (context,provider,child){
              log("IN CONSUMER");
              return Column(
                children: [
                    Text(Provider.of<MusicPlayer>(context).musicPlayerName),
                    const SizedBox(height: 50),
                    Text("${Provider.of<MusicPlayer>(context).musicListCount}"),
                    const SizedBox(height: 50,),

                    Text(Provider.of<MusicPlayer>(context).musicPlayerName),
                    const SizedBox(height: 50),
                    Text("${Provider.of<MusicPlayer>(context).musicListCount}"),
                    const SizedBox(height: 50,),
                ],
              );
              

            }
            ),
          

          ElevatedButton(
            onPressed: (){
                Provider.of<MusicPlayer>(context, listen: false).changeData("Youtube Music", 1800);
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
        return Text("${Provider.of<MusicPlayer>(context).musicListCount}");
       //return const Text("hello");
      });
  }
}