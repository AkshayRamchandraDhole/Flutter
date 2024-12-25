import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

 

  // String str = await getDatabasesPath();
  // print(str);

  database = openDatabase(
      join( await getDatabasesPath(),
      "PlayerDB.db"),
      version: 1,
      onCreate: (db,version){
        db.execute(
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

  
}