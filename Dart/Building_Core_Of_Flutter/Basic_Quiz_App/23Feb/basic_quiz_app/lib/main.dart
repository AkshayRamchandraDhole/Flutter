import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  QuizUI()
    );
  }
}

class QuizUI extends StatefulWidget{

  const QuizUI({super.key});

  @override
  State createState() => _QuizUIState();
}

class _QuizUIState extends State{

 int queCount = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        centerTitle : true,
        backgroundColor: Colors.blue,
        title: const Text("QuizApp",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
        ),
      ),

      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               const SizedBox(
                height: 30,
              ),
              const Text("Question:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
               const SizedBox(
                  width: 2,
                ),
                Text("$queCount/10"),

            ],
          ),
          const SizedBox(
            height: 30,
          ),
         const SizedBox(
            width: 300,
            height: 40,
            child: Text("What is your favorite player?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),

          ElevatedButton(
            onPressed: (){}, 
          child: const Text("A.Virat Kohli"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){}, 
          child: const Text("B.Rohit Sharma"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (){}, 
          child: const Text("C.MS Dhoni"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (){}, 
          child: const Text("D.Suresh Raina"),
          ),
          const SizedBox(
            height: 10,
          ),

        

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(queCount==10){
              queCount = 0;
            }
            queCount++;
          });
        },
        child: const Text("Next"),
      
      ),
    );
  }
}