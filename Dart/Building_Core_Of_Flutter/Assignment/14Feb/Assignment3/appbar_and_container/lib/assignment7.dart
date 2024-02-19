import "package:flutter/material.dart";

class Assignment7 extends StatelessWidget{

  const Assignment7({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First AppBar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: const NetworkImagesList()
    );
  }
}



class NetworkImagesList extends StatelessWidget{
  const NetworkImagesList({super.key});


  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: 150,
            width: 300,
            child: Image.network("https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg"),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: Image.network("https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg"),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: Image.network("https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg"),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: Image.network("https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg"),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: Image.network("https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg"),
          ),
        ],
      ),
    );
  }
}