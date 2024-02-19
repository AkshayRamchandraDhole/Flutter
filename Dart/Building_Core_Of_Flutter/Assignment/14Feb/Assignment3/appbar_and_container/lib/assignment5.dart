import "package:flutter/material.dart";
class Assignment5 extends StatelessWidget{

  const Assignment5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First AppBar"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
  
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.network('https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg'),
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.network('https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg')
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.network('https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg'),
            ),

        ],) 
      
      ),
    );
  }
  

}