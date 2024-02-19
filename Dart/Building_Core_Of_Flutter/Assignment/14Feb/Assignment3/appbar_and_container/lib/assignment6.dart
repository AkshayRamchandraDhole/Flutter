import "package:flutter/material.dart";

class Assignment6 extends StatelessWidget{

  const Assignment6({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First AppBar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: const ContainerList(),
    );
  }
}

class ContainerList extends StatelessWidget{

  const ContainerList({super.key});

  @override
  Widget build(BuildContext context){
    return Scrollbar(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (content,index){
          return Container(
              height: 100,
              color: index % 2 == 0 ? Colors.blue : Colors.green,
              child: Center(
                child: Text("Container ${index + 1}",
                            style: const TextStyle(color: Colors.white, fontSize: 20)
                        
                  ),
              ),
          );
        }),
      );
  }
}