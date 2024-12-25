import "package:flutter/material.dart";
import "package:path/path.dart";
import "package:sqflite/sqflite.dart";

import "player_model.dart";

dynamic database;

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(
      await getDatabasesPath(),
      "INDPlayerDB.db"
    ),

    version : 1,

    onCreate: (db,version) async {
        await db.execute(
          ''' 
          create table playerInd(
            playerName TEXT,
            jerNo INT PRIMARY KEY,
            runs INT,
            avg REAL
          )
          '''
        );

    },

  );

  Player pObj1 = Player(
    playerName: "Virat",
    jerNo: 18,
    runs: 50000,
    avg: 50.33,
  );
  insertPlayerData(pObj1);

  print(await getPlayerData());

}

void insertPlayerData(Player pObj) async{
  Database localDB = await database;

  await localDB.insert(
    "playerInd", 
    pObj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
}

 Future<List<Map<String,dynamic>>>getPlayerData() async{

  Database localDB = await database;

  List<Map<String, dynamic>> playerData = await localDB.query(
    "playerInd"
  );

  return playerData;
  // return List.generate(
  //   playerData.length, 
  //   (index){
  //     return playerData[index];
  //   }
  //   );
 }