import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: QuizApp()
    );
  }

}

class QuizApp extends StatefulWidget{
  
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{

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

      return const MaterialStatePropertyAll(Colors.green);

    }else if(buttonIndex == selectedAnswerIndex){

          return const MaterialStatePropertyAll(Colors.red);

    }else{

          return const MaterialStatePropertyAll(null);

    }
  }else{

      return const MaterialStatePropertyAll(null);
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
   

  Scaffold isQuestionScreen(){
      if(questionScreen == true){
        return Scaffold(
              appBar: AppBar(
                title: const Text("QuizApp",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: Colors.orange
                              ),
                              
                ),
                centerTitle: true,
                backgroundColor: Colors.blue,
              ),

              body: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Questions : ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                     Text("${questionIndex + 1}/${allQuestions.length}",
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                            ),
                     )
                    ],
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                    width: 380,
                    height: 50,

                    child: Text(allQuestions[questionIndex]["questions"],
                              style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400
                              ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(0)
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 0; 
                        });
                      }
                        
                    }, 
                  child: Text("A.${allQuestions[questionIndex]["options"][0]}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                  ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(1)
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 1; 
                        });
                      }
                        
                    }, 
                  child: Text("B.${allQuestions[questionIndex]["options"][1]}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                  ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(2)
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 2; 
                        });
                      }
                        
                    }, 
                 
                  child: Text("C.${allQuestions[questionIndex]["options"][2]}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                  ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                   style: ButtonStyle(
                      backgroundColor: checkAnswer(3)
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        setState(() {
                         selectedAnswerIndex = 3; 
                        });
                      }
                        
                    }, 
                  child: Text("D.${allQuestions[questionIndex]["options"][3]}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                  ),
                  ),
                ],
                ),

                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    validateCurrentPage();
                  },
                  backgroundColor: Colors.blue,

                  child: const Icon(Icons.forward,
                                  color: Colors.orange,
                  ),
                
                ),
        );
      }else{
          return Scaffold(
                appBar: AppBar(
                  title: const Text("QuizApp",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.orange,
                    ),
                  ),
                  centerTitle: true,
                ),
            body: Column(
              
              children: [
                const SizedBox(
                  height: 30,
                ),

                Image.network("https://static.vecteezy.com/system/resources/thumbnails/017/447/385/small/congratulation-letter-with-trophy-cup-in-gold-color-vector.jpg",
                // height: 80,
                // width: 380,
                ),

                const SizedBox(
                  height: 20,
                ),
                const Text("Congratulation!!!",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Text("You have completed the Quiz",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                ),

                const SizedBox(
                  height: 15,
                ),

                Text("$noOfCorrectAnswers/${allQuestions.length}"),

                ElevatedButton(
                  onPressed: (){
                    questionIndex = 0;
                    questionScreen = true;
                    noOfCorrectAnswers = 0;
                    selectedAnswerIndex = -1;
                    setState(() {
                      
                    });
                  },
                 child: const Text("Reset",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.orange,
                          ),
                 ),
                 )


              ],
              ),
          );
      }
  }
  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
}