import "package:flutter/material.dart";
import 'toggleBox1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Toggle Box',
      debugShowCheckedModeBanner: false,
      home: ToggleBox1()
    );
  }
}

class ToggleBox extends StatefulWidget{
  const ToggleBox({super.key});

  @override
  State<ToggleBox> createState(){
    return _ToggleBoxState();
  }
}

class _ToggleBoxState extends State<ToggleBox>{

bool colorBox1 = false;
bool colorBox2 = false;

int setColorBoxCount1 = 0;
int setColorBoxCount2 = 0;

Color setColorBox1(){

  if(colorBox1 == false){
    return Colors.red;
  }else{
    return Colors.black;
  }

}
Color setColorBox2(){

 if(colorBox2 == false){
    return Colors.black;
  }else{
    return Colors.red;
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
                    if(colorBox1 == false){
                      colorBox1 = true;
                    }else{
                      colorBox1 = false;
                    }
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
                    if(colorBox2 == false){
                      colorBox2 = true;
                    }else{
                      colorBox2 = false;
                    }
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