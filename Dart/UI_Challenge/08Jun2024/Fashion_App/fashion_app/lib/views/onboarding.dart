import 'package:fashion_app/views/boilerCode.dart';
import 'package:flutter/material.dart';
import 'home.dart';
class OnboardingPage extends StatefulWidget{

  const OnboardingPage({super.key});

  @override
  State createState ()=> _OnboardingPageState();
}

class _OnboardingPageState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 465,
                width: 375,
                child: Image.asset("page1.png"),
              ),

              Column(
                
                children: [
                  getContainer(120, 301),
                  getContainerPage11(48, 301),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 52,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: Container(
                            height: 24,
                            width: 62,
                            child: Text("Sign Up",
                            style: getStylePage1(18, 13, 13, 14, 1),
                            ),
                          )
                          ),
                      ),

                      Container(
                        height: 52,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: ElevatedButton(
                          
                          onPressed: (){
                            Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> HomePage()
                       )
                       );
                          }, 
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 122, 0, 1))
                          ),
                          child: Container(
                            height: 24,
                            width: 62,
                            child: Text("Sign In",
                            style: getStylePage1(18, 13, 13, 14, 1),
                            ),
                          )
                          ),
                      ),
                    ],
                  )

                ],
              )
            ],
          ),
          )
        ),
    );
  }
}
