import "package:flutter/material.dart";

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: ToggleColorBox(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ToggleColorBox extends StatefulWidget{
  const ToggleColorBox({super.key});

  @override
  State<ToggleColorBox> createState(){
    return _ToggleColorBoxState();
  }
}

class _ToggleColorBoxState extends State<ToggleColorBox>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Box"),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){},
               child: const Text("Button1"),
               )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){}, 
              child: const Text("Button2"),)
            ],
          ),
        ],
      ),
    );
  }
}