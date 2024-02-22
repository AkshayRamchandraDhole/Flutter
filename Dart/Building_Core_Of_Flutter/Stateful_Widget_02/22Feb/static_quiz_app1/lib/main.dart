import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Tech Quiz",
      debugShowCheckedModeBanner: false,
      home: TechQuiz(),
    );
  }
}

class TechQuiz extends StatefulWidget{

  const TechQuiz({super.key});

  @override
  State<TechQuiz> createState(){
    return _TechQuizState();
  }
}

class _TechQuizState extends State<TechQuiz>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const  Text("Tech Quiz"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text("Questions : 1/10"),
              const SizedBox(
                height: 20,
              ),
              const Text("Question 1 : What is Flutter?"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){},
               child: const Text("Option1"),
               ),
               const SizedBox(
                height: 20,
              ),
               ElevatedButton(
                onPressed: (){},
               child: const Text("Option2"),
               ),
               const SizedBox(
                height: 20,
              ),
               ElevatedButton(
                onPressed: (){},
               child: const Text("Option3"),
               ),
               const SizedBox(
                height: 20,
              ),
               ElevatedButton(
                onPressed: (){},
               child: const Text("Option4"),
               ),


              
            ]
            
            ),
            
        ),
    );
  }
}