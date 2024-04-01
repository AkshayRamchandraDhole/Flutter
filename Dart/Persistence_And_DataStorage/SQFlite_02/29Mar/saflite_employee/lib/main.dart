import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Employee{
  final int empId;
  final String empName;
  final double sal;

  const Employee({
    required this.empId,
    required this.empName,
    required this.sal,
  });

  Map<String,dynamic> employeeMapData(){
    return {
      'empId' : empId,
      'empName': empName,
      'sal' : sal
    };
  }

  
}


Future insertEmployeeData(Employee emp) async{
  final localDB = await database;

  print(localDB);
  print(await database);

  localDB.insert(
    "Employee",
    emp.employeeMapData(),
    conflictAlgorithm: ConflictAlgorithm.replace
  );
}

Future<List<Map<String,dynamic>>> getEmployeeData() async{

 final localDB = await database;

List<Map<String,dynamic>> listEmp = await localDB.query("Employee");

return listEmp;

}


Future<void> deleteEmployeeData(Employee emp) async{
  final localDB = await database;

  await localDB.delete(
    "Employee",
    where: "empId=?",
    whereArgs:[emp.empId],
  );
}
  Future<void> updateEmployeeData(Employee emp) async{

    final localDB = await database;

    await localDB.update(
      "Employee",
      emp.employeeMapData(),
      where: "empId=?",
      whereArgs: [emp.empId]
    );
  }

void main() async{
    WidgetsFlutterBinding.ensureInitialized();

    // create a table into the database 

   // print(await getDatabasesPath());  //  /data/user/0/com.example.sqflite_demo_1/databases

    database = openDatabase(
      join(await getDatabasesPath(),"Employee.db"),
      version: 1,
      onCreate: (db,version) async{
          await db.execute('CREATE TABLE Employee(empId INTEGER PRIMARY KEY, empName TEXT,sal REAL)');

      }
      );

    //print("Database created");
   // print(database);  // Instance of 'Future<Database>'

   Employee e1 = const Employee(
    empId: 101,
    empName: "Akshay",
    sal: 4.5
   );

   insertEmployeeData(e1);

   List<Map<String,dynamic>> retVal = await getEmployeeData();

   for(int i=0;i<retVal.length;i++){
    print(retVal[i]);
   }

   e1=Employee(empId: e1.empId, empName: "Gaurav", sal: e1.sal + 10);

   await updateEmployeeData(e1);

   retVal = await getEmployeeData();

   for(int i=0;i<retVal.length;i++){
    print(retVal[i]);
   }

   await deleteEmployeeData(e1);

   retVal = await getEmployeeData();

   for(int i=0;i<retVal.length;i++){
    print(retVal[i]);
   }

   





}


