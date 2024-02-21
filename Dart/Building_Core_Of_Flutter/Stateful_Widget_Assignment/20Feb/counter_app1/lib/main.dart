import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Flutter Demo',
      home : MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState(){
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{

int _counter = 0;

void _incrementCounter(){
  setState(() {
    _counter++;
  });
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You Have Pushed the button this many times"),
            Text('$_counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        //tooltip: 'Increment',
        child: const Icon(Icons.add),
        ),
    );
  }
}