import 'package:flutter/material.dart';
import 'package:stack_widget_demo/drawer_demo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Stack Demo",
            style: TextStyle(
              fontSize: 20,
              
            ),
            
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: const MenuDrawerWidget(),
        endDrawer: const MenuDrawerWidget(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const [
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME",backgroundColor: Colors.black,),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: "CAR"),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: "DELETE"),
        ],
        ),

        body: Stack(
          
          children: [
            Container(
              height: 200,
              color: Colors.amber,
            ),

            //  Container(
            //   //height: 200,
            //   color: Colors.red,
            // ),
          const Center(
            child:  Text(
            "Incubators",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          ),

          const Positioned(
            // bottom: 0,
            top: 0,
            right: 0,
            child: Text(
              "Core2web",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black
              ),
            ),
          )

          ],
        )
      ),
    );
  }
}
