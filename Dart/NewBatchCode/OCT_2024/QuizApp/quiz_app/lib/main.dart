
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override 
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{

  List<Map> allQuestions = [
    {
      "question" : "Who is the founder of Microsoft?",
      "options" : ["Steve Jobs", "Bill Gates" , "Lary Page", "Elon Musk"],
      "correctAnswer" : 1
    },
    {
      "question" : "Who is the founder of Google?",
      "options" : ["Steve Jobs", "Bill Gates" , "Lary Page", "Elon Musk"],
      "correctAnswer" : 2
    },
    {
      "question" : "Who is the founder of SpaceX?",
      "options" : ["Steve Jobs", "Bill Gates" , "Lary Page", "Elon Musk"],
      "correctAnswer" : 3
    },
    {
      "question" : "Who is the founder of Apple?",
      "options" : ["Steve Jobs", "Bill Gates" , "Lary Page", "Elon Musk"],
      "correctAnswer" : 0
    },
    {
      "question" : "Who is the founder of Meta?",
      "options" : ["Steve Jobs", "Mark Zuckerberg" , "Lary Page", "Elon Musk"],
      "correctAnswer" : 1
    },
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int correctedAnswers = 0;

  MaterialStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
      if(answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
        return const MaterialStatePropertyAll(Colors.green);
      }else if(selectedAnswerIndex == answerIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(null);
      }

    }else {
     return const MaterialStatePropertyAll(null);
    }
  }


  @override 
  Widget build(BuildContext context){
    return isQuestionPage();
  }

  bool questionsPage = true;
  Scaffold isQuestionPage(){
    if(questionsPage == true){
      return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange
                        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row (
            children: [
              const SizedBox(
                width: 130,
              ),
              Text("Questions : ${currentQuestionIndex+1}/${allQuestions.length}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700
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
            child: Text(allQuestions[currentQuestionIndex]['question'],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple
                ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0)
              ),
              onPressed: (){
                  if(selectedAnswerIndex == -1)
                  {
                    selectedAnswerIndex = 0;
                  }
                  setState(() {
                    
                  });
              }, 
              child: Text("A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
              ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1)
              ),
              onPressed: (){
                  if(selectedAnswerIndex == -1)
                  {
                    selectedAnswerIndex = 1;
                  }
                  setState(() {
                    
                  });
              }, 
              child: Text("B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                 style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
              ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2)
              ),
              onPressed: (){
                  if(selectedAnswerIndex == -1)
                  {
                    selectedAnswerIndex = 2;
                  }
                  setState(() {
                    
                  });
              }, 
              child: Text("C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                 style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
              ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3)
              ),
              onPressed: (){
                  if(selectedAnswerIndex == -1)
                  {
                    selectedAnswerIndex = 3;
                  }
                  setState(() {
                    
                  });
              }, 
              child: Text("D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                 style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                
              )
              ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(selectedAnswerIndex != -1){
              if(selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
                correctedAnswers++;
              }
              if(currentQuestionIndex < allQuestions.length - 1){
                currentQuestionIndex++;
               
            }else{
              questionsPage = false;
            }
            selectedAnswerIndex = -1;
            setState(() {
              
            });
          }
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.forward,
          color: Colors.orange,
        ),
        ),
      
    );
    } else {
      return Scaffold(
        appBar: AppBar(
        title: const Text("Result",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange
                        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              const SizedBox(
                height: 20,
              ),                
              Image.network("https://static.vecteezy.com/system/resources/thumbnails/017/447/385/small/congratulation-letter-with-trophy-cup-in-gold-color-vector.jpg"),
        
              const SizedBox(
                height: 20,
              ), 
        
              const Text("Congratulation",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),
              ),
        
              const SizedBox(
                height: 20,
              ), 
        
              Text("Score : $correctedAnswers/${allQuestions.length}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
              onPressed: (){
                selectedAnswerIndex = -1;
                correctedAnswers = 0;
                currentQuestionIndex = 0;
                questionsPage = true;
                setState(() {
                });
              }, 
              child: const Text("Reset",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),
              )
              )
              
              
            ],
        ),
      ),
      );
    }
  }
  
}