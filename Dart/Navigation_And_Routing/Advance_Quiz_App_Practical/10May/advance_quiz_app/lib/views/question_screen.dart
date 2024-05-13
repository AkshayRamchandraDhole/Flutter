import 'package:advance_quiz_app/views/row_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override 
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen>{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //const Spacer(),
            
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                    Text(
                      "Math Quiz",
                      style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                  color:  Color.fromRGBO(131, 76, 52, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ), 
                      ),
                    ),
                    ],
              ),
          Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        LinearPercentIndicator(
                            width: 500.0,
                            lineHeight: 14.0,
                            percent: 0.1,
                            backgroundColor:const Color.fromRGBO(245, 216, 186, 1),
                            barRadius: const Radius.circular(20),
                            progressColor: Colors.green,
                        ),
                      ],
                    ),

          Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "12/20",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                                      color:  Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                    )
                        ),
                      ),
                    ],
                  ),
          const SizedBox(
            height: 05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                '''
                If David’s age is 27 
                years old in 2011. What 
                was his age in 2003?
            ''',
            style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                                      color:  Color.fromRGBO(131, 76, 52, 1),
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      
                                    )
                        ),
            )

          ],
          ),
          const SizedBox(
            height: 5,
          ),

          getanswerRow(),
          const SizedBox(
            height: 10,
          ),
          getanswerRow(),
          const SizedBox(
            height: 10,
          ),
          getanswerRow(),
          const SizedBox(
            height: 10,
          ),
          getanswerRow(),
          const SizedBox(
            height: 15,
          ),

          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Explanation",
                    style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  color:  Color.fromRGBO(131, 76, 52, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                    )
                    ),
                  ),
                ],
              ),

              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '''
              Lorem Ipsum is simply dummy text of the 
              printing and typesetting industry. Lorem 
              Ipsum is simply dummy text of the 
              printing 
              ''',
              style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              color:  Color.fromRGBO(131, 76, 52, 0.8),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                )
                ),
              )
            ],
          )
            ],
          ),

          
                  
                
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor:const Color.fromRGBO(26, 181, 134, 1),
        isExtended: true,
        child: Text(
          "Next",
          style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                                      color:  Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      
                                    )
                        ),
          
        ),
       
      ),
    );
  }
}