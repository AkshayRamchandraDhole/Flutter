import 'dart:developer';

import 'package:flutter/material.dart';
import "package:provider/provider.dart";


class MainApp2 extends StatelessWidget {
  const MainApp2({super.key});

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
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar Text"),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: Center(
           // child: Text("${Provider.of<MusicPlayer>(context).musicListCount}")),
           child: Consumer(
            builder: (context, value, child) {
             return Text("${Provider.of<MusicPlayer>(context).musicListCount}");
           },
           ),
        ),
        ),
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



