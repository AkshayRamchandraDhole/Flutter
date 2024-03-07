import 'package:flutter/material.dart';
class ListViewAssignmentDemo extends StatefulWidget{

  const ListViewAssignmentDemo({super.key});

  @override
  State createState() => _ListViewAssignmentDemoState();
}

class _ListViewAssignmentDemoState extends State{


Map cricketPlayerList = {
 "test":[
"https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWe9Akz8eHGslio8Eno9ln5DYJkZeVo_LCuiqs9yeK8Q&s",
"https://upload.wikimedia.org/wikipedia/commons/c/cc/Rohit_Gurunath_Sharma.jpg",
 ],
 "odi":[
"https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWe9Akz8eHGslio8Eno9ln5DYJkZeVo_LCuiqs9yeK8Q&s",
"https://upload.wikimedia.org/wikipedia/commons/c/cc/Rohit_Gurunath_Sharma.jpg",
 ],
 "t20":[
"https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWe9Akz8eHGslio8Eno9ln5DYJkZeVo_LCuiqs9yeK8Q&s",
"https://upload.wikimedia.org/wikipedia/commons/c/cc/Rohit_Gurunath_Sharma.jpg",
 ]

};
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewDemo"),
        centerTitle : true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(

        itemCount: cricketPlayerList.length,

        separatorBuilder: (context, index) {

          return const Text("----------------------------------------------------------",
                style: TextStyle(
                  fontSize: 30,
                ),
          );
        },
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.all(10),
            child: Image.network(cricketPlayerList["odi"][index]),
            );

        }

      )
          
    );
  }
}
