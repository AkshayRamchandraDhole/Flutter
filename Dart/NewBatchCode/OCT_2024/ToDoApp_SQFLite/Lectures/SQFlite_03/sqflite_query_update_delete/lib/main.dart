import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_query_update_delete/food_model.dart';

dynamic database;


void main() async{

    WidgetsFlutterBinding.ensureInitialized();

    database = openDatabase(
      join(
        await getDatabasesPath(),
        "ZomatoDB.db"
      ),

      version : 1,
      onCreate: (db,version) async{
          await db.execute(
            ''' 
            create table Food(
              orderNo INT PRIMARY KEY,
              custName TEXT,
              hotelName TEXT,
              food TEXT,
              bill REAL
            )
            '''
          );
      }

    );

    Food zobj1 = Food(
        orderNo: 100,
        custName: "Pranali",
        hotelName: "Asia Kitchen",
        food: "Bao,Noodles",
        bill: 3560.70
    );

    Food zobj2 = Food(
        orderNo: 200,
        custName: "Rahul",
        hotelName: "MaCD",
        food: "MacPuff, Fries, Burger",
        bill: 780.80
    );

    insertOrderData(zobj1);
    insertOrderData(zobj2);

    print(await getOrderData());

    zobj2 = Food(orderNo: 200, 
    custName: "Rahul", 
    hotelName: "MaCD", 
    food: "$zobj2.food, ColdDrinks", 
    bill: zobj2.bill + 150.37);

    updateOrderData(zobj2);

    print(await getOrderData());

    deleteOrderData(zobj2.orderNo);

    print(await getOrderData());

}

void insertOrderData(Food fObj) async{
  
  Database localDB  = await database;

  await localDB.insert(
    "Food", 
    fObj.orderMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );

}

Future<List<Map<String,dynamic>>> getOrderData() async{

  Database localDB = database;

  List<Map<String,dynamic>> orderMap = await localDB.query(
    "Food"
  );

  return orderMap;
}


void deleteOrderData(int orderNo) async{

    Database localDB = await database;
    await localDB.delete(
      "Food",
      where: 'orderNo=?',
      whereArgs: [orderNo]
    );

}

void updateOrderData(Food orderObj) async{
  Database localDB = database;

  await localDB.update(
    "Food",
     orderObj.orderMap(),
     where: 'orderNo=?',
     whereArgs: [orderObj],
     );
}