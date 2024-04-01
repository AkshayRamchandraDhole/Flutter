import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Player{

  final String name;
  final int jerNo;
  final int  runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String,dynamic> playerMap(){
    return {
      'name' : name,
      'jerNo' : jerNo,
      'runs' : runs,
      'avg' : avg,
    };
  }

  @override
  String toString(){
    return 'name: $name,jerNo: $jerNo,runs: $runs,avg: $avg';
  }


}

// insert data into db 

Future insertPlayerData(Player obj) async{

  final localDB = await database;

  localDB.insert(
    "Player",
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// Fetch the data from Database

Future<List<Map<String,dynamic>>> getPlayerData() async{

  final localDB = await database;

  List<Map<String,dynamic>> listPlayer = await localDB.query("Player");

  return listPlayer;

 // return List.generate(listPlayer.length, (i){

   // return Player(
    
      //name: listPlayer[i]['name'],
  //   jerNo: listPlayer[i]['jerNo'], 
    // runs: listPlayer[i]['runs'],
     //avg: listPlayer[i]['avg'],
    
//     );

  //});

}


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

 // print(await getDatabasesPath());


  // Create a table into databse 

  database = openDatabase(
    join (await getDatabasesPath(), "Players.db"),
    version: 1,
    onCreate: (db, version) async{

      await db.execute('CREATE TABLE Player(name TEXT,jerNo INTEGER PRIMARY KEY,runs INT,avg REAL)');

    },
  );


  // to insert the data in database 

  Player batsman1 = Player(
    name: "Virat Kohli",
    jerNo: 18,
    runs: 50000,
    avg: 50.33,
  );

  insertPlayerData(batsman1);

List<Map<String,dynamic>> retVal = await getPlayerData();
  // Fetch the data from data base 

  for(int i=0;i<retVal.length;i++){
    print(retVal[i]);
  }

  //print(await getPlayerData());


}