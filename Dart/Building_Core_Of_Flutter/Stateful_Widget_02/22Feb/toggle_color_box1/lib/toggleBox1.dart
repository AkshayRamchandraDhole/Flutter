import 'package:flutter/material.dart';


class ToggleBox1 extends StatefulWidget{
  const ToggleBox1({super.key});

  @override
  State<ToggleBox1> createState(){
    return _ToggleBoxState1();
  }
}
class _ToggleBoxState1 extends State<ToggleBox1>{


int setColorBoxCount1 = 0;
int setColorBoxCount2 = 0;

Color setColorBox1(){

  if(setColorBoxCount1 == 0){
    return Colors.red;
  }else if(setColorBoxCount1 == 1){
    return Colors.green;
  }else if(setColorBoxCount1 == 2){
    return Colors.blue;
  }else if(setColorBoxCount1 == 3){
    return Colors.black;
  }else{
    return Colors.red;
  }

}
Color setColorBox2(){

 if(setColorBoxCount2 == 0){
    return Colors.black;
  }else if(setColorBoxCount2 == 1){
    return Colors.blue;
  }else if(setColorBoxCount2 == 2){
    return Colors.green;
  }else if(setColorBoxCount2 == 3){
    return Colors.red;
  }else{
   return Colors.black;
  }
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Box"),
        centerTitle: true,      
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setColorBox1(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  setState((){
                    setColorBoxCount1++;
                  });

                },
                child: const Text("Button 1"),
                ), 
              
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setColorBox2(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    setColorBoxCount2++;
                  });
                },
                child: const Text("Button 2"),
                ), 
              
            ],
          ),

        ],
      ),
    );
  }
}