import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class FinishScreen extends StatefulWidget{

  const FinishScreen({super.key});

  @override 
  State<FinishScreen> createState() => _FinishScreenState();
}
class _FinishScreenState extends State<FinishScreen>{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
     body:  Stack(
        alignment: Alignment.center,
        children: [
        Image.asset("assets/BG.png",
                    fit: BoxFit.cover,
                    ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Text(
                                  "Quiz Result",
                                  style: GoogleFonts.dmSans(
                                            textStyle: const TextStyle(
                                                color:  Color.fromRGBO(131, 76, 52, 1),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                  ),
                                  ),
                                ),
                                
                              ]
                          ),
                    const SizedBox(
                      height: 5,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text(
                              "Math",
                              style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            color:  Color.fromRGBO(131, 76, 52, 1),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                              ),
                              ),
                            ),
                            
                          ]
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 85,
                        width: 85,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(250, 245, 241, 1)
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "M",
                          style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            color:  Color.fromRGBO(200, 60, 0, 1),
                                            fontSize: 40,
                                            fontWeight: FontWeight.w400,
                              ),
                              ),
                        ),
                      )
              ],
            ), 
            Container(
              height: 311,
              width: 354,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(246, 221, 195, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 135,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(248, 145, 87, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                              const SizedBox(
                          height: 20,
                          width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                  Text(
                                "Total won quiz's till now",
                                                    style: GoogleFonts.dmSans(
                                          textStyle: const TextStyle(
                                              color:  Color.fromRGBO(0, 0, 0, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                ),
                                ),
                            
                                                  ),
                                                ],
                                              ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                  Text(
                                "Lorem Ipsum has been the industry's",
                                                    style: GoogleFonts.dmSans(
                                          textStyle: const TextStyle(
                                              color:  Color.fromRGBO(0, 0, 0, 1),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                ),
                                ),
                            
                                                  ),
                                                ],
                                              ),
                          ) 
                          
                          ],
                        ),
                        
                                           
                    
                    
                    ],
                    ),
                  ),
                  
                   
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Container(
                                height: 95,
                                width: 142,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(250, 245, 241, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0)
                                  )
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " Solved \n Questions",
                                    style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            color:  Color.fromRGBO(131, 76, 52, 0.9),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                      ),
                                      )
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "20",
                                      textAlign: TextAlign.start,
                                     style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            color:  Color.fromRGBO(131, 76, 52, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                      ),
                                      ) 
                                    )
                                  ],
                                  ),
                              )
                          ],
                        ),
                      ),
                      const SizedBox(
                    width: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                          Container(
                            height: 95,
                            width: 142,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(26, 181, 134, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0)
                              )
                            ),
                            child:Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " Correct \n Questions",
                                    style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            color:  Color.fromRGBO(255, 255, 255, 0.87),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                      ),
                                      )
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "16",
                                      textAlign: TextAlign.start,
                                     style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            color:  Color.fromRGBO(255, 255, 255, 0.87),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                      ),
                                      ) 
                                    )
                                  ],
                                  ),
                          )
                          
                      ],
                    ),
                  )
                    ],
                  ),

                  
                  
                ],
              ),
            )
            ],
      
     ),
    );
  }
}