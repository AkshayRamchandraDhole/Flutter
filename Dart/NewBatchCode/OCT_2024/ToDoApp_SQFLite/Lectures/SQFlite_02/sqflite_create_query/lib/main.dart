import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_create_query/player_model.dart';


dynamic database;

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(
      await getDatabasesPath(),
      "PlayerDB.db",
    ),
    version: 1,
    onCreate: (db, version) async{
      await db.execute(
        ''' 
        create table Player(
          playerName TEXT,
          jerNo INT PRIMARY KEY,
          runs INT,
          avg REAL
        )
        '''
      );
    }

  );

  PlayerModel pObj1 = PlayerModel(
    playerName: "Virat", 
    jerNo: 18, 
    runs: 50000, 
    avg: 50.33
    );

    PlayerModel pObj2 = PlayerModel(
    playerName: "Rohit", 
    jerNo: 45, 
    runs: 30000, 
    avg: 40.33
    );

    insertPlayerData(pObj1);
    insertPlayerData(pObj2);

    print(await getPlayerData());

    pObj2 = PlayerModel(
      playerName: "Rohit", 
      jerNo: 48, 
      runs: pObj2.runs + 10000, 
      avg: pObj2.avg + 5.45
      );

    updatePlayerdata(pObj2);

    print(await getPlayerData());

    deletePlayerData(pObj2.jerNo);

    print(await getPlayerData());
    



}

//// insert player Data function


void insertPlayerData(PlayerModel obj) async{

  Database localDb =  await database;

  await localDb.insert(
    "Player", 
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
}

///// get the player data function
///
///
Future<List<Map<String,dynamic>>> getPlayerData() async{

  Database localDb = await database;

  List<Map<String,dynamic>> playerData = await localDb.query(
    "Player"
  );
  return playerData;

}

/// delete player data function 
/// 
/// 
void deletePlayerData(int jerNo) async{

  Database localDb = await database;

  await localDb.delete(
    "Player",
    where: 'jerNo=?',
    whereArgs: [jerNo],
  );
}


// update player data function 


void updatePlayerdata(PlayerModel obj) async{

  Database localDb = await database;

  await localDb.update(
    "Player",
     obj.playerMap(),
     where: 'jerNo=?',
     whereArgs: [obj.jerNo],
     );
}