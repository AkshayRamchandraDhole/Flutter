import 'package:flutter/material.dart';
import 'package:home_rent_app/views/function.dart';
import 'package:home_rent_app/views/home_page.dart';
class StartPage extends StatefulWidget{

  const StartPage({super.key});

  @override 
  State createState()=> _StartPageState();
}

class _StartPageState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
       // padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 520,
              width: 330,
              child: Image.asset("Rectangle1.png"),
          ),
          Column(
            children: [
             const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lets find your Paradise",
                  style: getFontsRectPage1(22,0,0,0,1),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Find your perfect dream space \n          with just a few clicks",
                  style: getFontsRectPage1Row2( 15, 101, 101, 101, 1),
                  
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(32, 169, 247, 1))),
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                           const HomePage()
                          
                          )
                        );
                      },
                     child: Text( "Get Started",
                     style: getFontsRectPage1Row2( 22, 255, 255, 255, 1),
                     ),
                     ),
                  )
                ],
              ),
            ],
          )

          ],
      ),
      ),
    );
  }
}