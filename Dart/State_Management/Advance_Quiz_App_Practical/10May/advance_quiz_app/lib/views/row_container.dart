import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advance_quiz_app/views/question_screen.dart';
// LIST OF SUBJECT
  List listofSubject = [
    "Math",
    "History",
    "Geography",
    "Biology",
    "Sports"
  ];

  // LIST OF SUBJECT STARTING WORD  
  List listofSubjectStartWord = [
    "M",
    "H",
    "G",
    "B",
    "S"
  ];
    int questionIndex = 0;
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
Row getRowContainer(int index){
  return Row(
                      children: [
                        Container(
                          //alignment: Alignment.topLeft,
                          // height: 80,
                           width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(255, 237, 217, 1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(255, 255, 255, 1)
                                  ),
                                  child: Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "${listofSubjectStartWord[index]}",
                                      style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                          color:  Color.fromRGBO(200, 60, 0, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                          ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${listofSubject[index]}",
                                  style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                          color:  Color.fromRGBO(131, 76, 52, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                          ),
                                      ),
                                ),
                                // const SizedBox(
                                //   width: 120,
                                // ),
                                const Spacer(),
                                IconButton(
                                  onPressed: (){
                                
                                    // Navigator.push(context, MaterialPageRoute(builder: (context){
                                    //   return const QuestionScreen();
                                    // }));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward
                                  ),
                                  color: const Color.fromRGBO(52, 10, 0, 1),
                                  
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
              
}

// Answer container 

Row getanswerRow(){
  return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  height: 54,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (){
                  
                    },
                    style:const ButtonStyle( 
                      backgroundColor:  MaterialStatePropertyAll(
                        Color.fromRGBO(26, 181, 134, 1)
                      ),
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
          )  ;
}