import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Indian Flag',
      home: IndiaFlag(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IndiaFlag extends StatefulWidget{

  const IndiaFlag({super.key});

  @override
  State<IndiaFlag> createState(){
    return _IndiaFlagState();
  }

}

class _IndiaFlagState extends State<IndiaFlag>{
int counter = -1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("India Flag",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 20,
        ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: const Text("ADD"),
        ),
      body: Container(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (counter>=0)
            ?Container(
              height: 700,
              width: 20,
              color: Colors.black,
            )
            :Container(),
            Column(
              children: [
                  (counter>=1)
                  ? Container(
                    height: 80,
                    width: 250,
                    color: Colors.orange,
                  )
                  :Container(),
                  (counter>=2)
                  ? Container(
                    height: 80,
                    width: 250,
                    color: Colors.white,
                    child: 
                    (counter>=3)
                   ? Image.network("data:image/png;base64,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")
                   : Container() ,
                  )
                  :Container(),
                  (counter>=4)
                  ? Container(
                    height: 80,
                    width: 250,
                    color: Colors.green,
                  )
                  :Container(),

              ],
            )
          ],
        ),
      ),
    );
  }
}