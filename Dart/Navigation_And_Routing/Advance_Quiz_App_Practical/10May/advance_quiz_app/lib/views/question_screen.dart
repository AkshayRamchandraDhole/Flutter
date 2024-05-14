import 'package:advance_quiz_app/views/finish_screen.dart';
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
  
    bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

List<Map> allQuestions = [
    {
      "questions":"Who is the founder of Microsoft?",
      "options" : ["Steve Jobs","Jeff Bezos","Bill Gates","Elon Musk"],
      "answerIndex":2,
    },
    {
      "questions":"Who is the founder of Apple?",
      "options" : ["Steve Jobs","Jeff Bezos","Bill Gates","Elon Musk"],
      "answerIndex":0,
    },
    {
      "questions":"Who is the founder of Amazon?",
      "options" : ["Steve Jobs","Jeff Bezos","Bill Gates","Elon Musk"],
      "answerIndex":1,
    },
    {
      "questions":"Who is the founder of Tesla?",
      "options" : ["Steve Jobs","Jeff Bezos","Bill Gates","Elon Musk"],
      "answerIndex":3,
    },
    {
      "questions":"Who is the founder of Google?",
      "options" : ["Steve Jobs","Lary Page","Bill Gates","Elon Musk"],
      "answerIndex":1,
    }
  ];

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex){

  if(selectedAnswerIndex != -1){

    if(buttonIndex == allQuestions[questionIndex]["answerIndex"]){

      return const MaterialStatePropertyAll(Color.fromRGBO(26, 181, 134, 1));

    }else if(buttonIndex == selectedAnswerIndex){

          return const MaterialStatePropertyAll(Colors.red);


    }else{

          return const MaterialStatePropertyAll(Color.fromRGBO(248, 145, 87, 1));

    }
  }else{

      return const MaterialStatePropertyAll(Color.fromRGBO(248, 145, 87, 1));
  }

}
void validateCurrentPage(){
  if(selectedAnswerIndex == -1){
    return;
  }

  if(selectedAnswerIndex == allQuestions[questionIndex]["answerIndex"]){
    noOfCorrectAnswers +=1;
  }

  if(selectedAnswerIndex !=-1){

    if(questionIndex == allQuestions.length-1){
      setState(() {
        questionScreen = false;
      });
    }

    selectedAnswerIndex = -1;
    setState(() {
      questionIndex +=1;
    });
  }

}

StatefulWidget isQuestionScreen(){
   if(questionScreen == true){
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
                        "${questionIndex + 1}/${allQuestions.length}",
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
                //textAlign: TextAlign.start,
               allQuestions[questionIndex]["questions"],
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

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  height: 54,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (){
                        if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 0; 
                        });
                      }
                    },
                    style: ButtonStyle( 
                      backgroundColor: checkAnswer(0)
                      ),
                      child: Text(
                        "${allQuestions[questionIndex]["options"][0]}",
                        style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                          color:  Color.fromRGBO(255, 255, 255, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          
                                        )
                            ),
                      ),
                    
                  ),
                )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  height: 54,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 1; 
                        });
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(1)
                    ),
                      child: Text(
                        "${allQuestions[questionIndex]["options"][1]}",
                        style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                          color:  Color.fromRGBO(255, 255, 255, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          
                                        )
                            ),
                      ),
                    
                  ),
                )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  height: 54,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 2; 
                        });
                      }
                    },
                     style: ButtonStyle(
                      backgroundColor: checkAnswer(2)
                    ),
                      child: Text(
                        "${allQuestions[questionIndex]["options"][2]}",
                        style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                          color:  Color.fromRGBO(255, 255, 255, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          
                                        )
                            ),
                      ),
                    
                  ),
                )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  height: 54,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 3; 
                        });
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(3)
                    ),
                      child: Text(
                        "${allQuestions[questionIndex]["options"][3]}",
                        style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                          color:  Color.fromRGBO(255, 255, 255, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          
                                        )
                            ),
                      ),
                    
                  ),
                )
            ],
          ),
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
        onPressed: (){
            validateCurrentPage();
        },
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
   }else{
    return FinishScreen();
   }
}
  @override 
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
}