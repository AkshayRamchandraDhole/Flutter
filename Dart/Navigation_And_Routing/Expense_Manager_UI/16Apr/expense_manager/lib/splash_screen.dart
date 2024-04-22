import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState(); 
}
class _SplashScreenState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 144,
              width: 144,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 238, 235, 1)
              ),
              child: Image.asset("images/Group77.png"),
            ),
           const SizedBox(
            height: 340,
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                   MaterialPageRoute(
                    builder:(context) => LoginScreen()
                    
                    )

                  );
                },
                child: const Text(  
                  "Expense Manager",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
               ),
             ],
           )
          ]
          ,),
      ),
    );
  }
}