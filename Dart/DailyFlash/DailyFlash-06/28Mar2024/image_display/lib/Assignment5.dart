import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});
  @override
  State createState()=> Assignment5State();
}

class Assignment5State extends State{

Color container1 = Colors.white;
Color container2 = Colors.white;
Color container3 = Colors.white;
void changeColor(int number){
  setState(() {
    if(number == 1){
        container1 = Colors.red;
        container2 = Colors.white;
        container3 = Colors.white;

    }else if(number == 2){
        container1 = Colors.white;
        container2 = Colors.red;
        container3 = Colors.white;
    }else{
        container1 = Colors.white;
        container2 = Colors.white;
        container3 = Colors.red;
    }
  });
}


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                  changeColor(1);
              },
              child: Container(

                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: container1,
                ),
              ),
            ),

          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: (){
                  changeColor(2);
              },
              child: Container(

                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: container2,
                ),
              ),
            ),

          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: (){
                  changeColor(3);
              },
              child: Container(

                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: container3
                ),
              ),
            ),

          const SizedBox(
            height: 10,
          ),

          ],)
        
        
        
        ),
    );
  }
}