import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:provider/provider.dart";


class MainApp4 extends StatelessWidget {
  const MainApp4({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP4 BUILD");
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(
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

class Mobile with ChangeNotifier{
  String mobileName;
  int price;

  Mobile({required this.mobileName,required this.price});
  void changeData(String mobileName,int price){
    this.mobileName = mobileName;
    this.price = price;
    notifyListeners();
  }
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
  State createState() => _MobileCollectionState();
}

class _MobileCollectionState extends State{

  @override
  Widget build(BuildContext context){
    log("IN MobileCollection BUILD");
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

          Consumer2(
            builder: ((context, value, value2, child) {
              log("IN CONSUMER2");
              return Column(
                children: [
                    Text(Provider.of<MusicPlayer>(context).musicPlayerName),
                    const SizedBox(height: 50),
                    Text("${Provider.of<MusicPlayer>(context).musicListCount}"),
                    const SizedBox(height: 50,),
                ],
              );
            })
            ),
          

          ElevatedButton(
            onPressed: (){
                Provider.of<MusicPlayer>(context, listen: false).changeData("Youtube Music", 1800);
                Provider.of<Mobile>(context,listen: false).changeData("OPPO", 20000);
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
        return Column(
          children: [
            Text("${Provider.of<MusicPlayer>(context).musicListCount}"),
            Text(Provider.of<Mobile>(context).mobileName)
          ],
        );
        
       //return const Text("hello");
      });
  }
}