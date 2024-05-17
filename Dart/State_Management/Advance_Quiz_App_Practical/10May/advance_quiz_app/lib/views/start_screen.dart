import 'package:advance_quiz_app/views/profile_screen.dart';
import 'package:flutter/material.dart';
class StartScreen extends StatefulWidget{

  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
 }

 class _StartScreenState extends State<StartScreen>{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Image.asset("assets/BG.png",
              fit: BoxFit.cover,
              ),
           
               Positioned(
                    top: 320,
                    child: Image.asset("assets/Logo.png",
                    height: 117,
                    width: 238,
                    ),
                    
                
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ProfileScreen();
              }));
            },
             child: const Text("New Page"))
            ],
          ),
        ),
    );
  }
 }