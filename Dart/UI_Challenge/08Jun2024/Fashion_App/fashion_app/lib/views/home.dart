import 'package:fashion_app/views/boilerCode.dart';
import 'package:flutter/material.dart';

import 'details.dart';
class HomePage extends StatefulWidget{

  const HomePage({super.key});

  @override
  State createState ()=> _HomePageState();
}

class _HomePageState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(

            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.menu)
                    ),

                    const Spacer(),

                    IconButton(
                    onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> DetailsPage()
                       )
                       );
                    }, 
                    icon: const Icon(Icons.account_circle_outlined),
                    ),


                ],
              ),

              Row(
                children: [
                  Container(
                    height: 62,
                    width: 171,
                    child: Column(
                      children: [
                        Container(
                          height: 36,
                          width: 114,
                          child: Text("Explore",
                          style: getStylePage1(26, 13, 13, 14, 1),
                          ),
                        ),
                        Container(
                          height: 18,
                          width: 171,
                          child: Text("       Best trendy collection!",
                          style: getStylePage1(14, 121, 119, 128, 1)
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                   getBrandPeople(),

                ],
              ),

              Container(
                height: 454,
                width: 315,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getHomePageColumn(244,150,
                    Image.asset("page21.png"),
                    18,60,
                    16,96,
                    190,150,
                    Image.asset("page23.png"),
                    140,150),

                    getHomePageColumn(190,150,
                    Image.asset("page22.png"),
                    18,60,
                    16,96,
                    244,150,
                    Image.asset("page24.png"),
                    150,194,
                    )
                  ],
                ),
              )
            ],
          ),
          )
        ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
            
            BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Color.fromRGBO(248, 162, 69, 1),
            ),
            label: 'Home',
           // backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),


            BottomNavigationBarItem(
            icon: Icon(Icons.search,
            color: Color.fromRGBO(157, 178, 206, 1),),
            label: 'Search',
           // backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),


            BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard,
            color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Cart',
           backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),


            BottomNavigationBarItem(
            icon: Icon(Icons.settings,
            color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Settings',
           // backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),
            
        ],
        currentIndex: 0,
        selectedItemColor: const Color.fromRGBO(248, 162, 69, 1),
       //backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        ), 
    );
  }
}
