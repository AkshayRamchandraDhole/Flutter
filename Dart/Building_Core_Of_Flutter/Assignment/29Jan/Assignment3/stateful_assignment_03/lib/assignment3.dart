import 'package:flutter/material.dart';
class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();


}
class _Assignment3State extends State<Assignment3>{

  int? selectedindex = 0;

  // LIST OF IMAGES
  final List<String> imageList = [
    "https://www.istockphoto.com/photo/hot-air-balloons-soaring-over-the-taj-mahal-in-agra-city-gm1394071400-449692980",
    "https://images.freeimages.com/images/large-previews/56d/peacock-1169961.jpg",
    "https://media.istockphoto.com/id/1317149056/photo/aerial-view-of-mountain-forests-with-brilliant-fall-colors-in-autumn-at-sunrise-new-england.webp?s=2048x2048&w=is&k=20&c=6As0XmoMqQTCC0eXSH-2g7kCkhz5WeHM7RChEtjkUHw=",
    "https://images.pexels.com/photos/19052759/pexels-photo-19052759.png?cs=srgb&dl=pexels-sasha-prasastika-19052759.jpg&fm=jpg",
    ];

    void showNextImage(){
      setState( () {
        selectedindex = selectedindex! + 1;
      });
    }

    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Display Image",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                imageList[selectedindex!],
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: showNextImage, 
                child: const Text(
                  "Next",
                ),
                ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    selectedindex = 0;
                  });
                }, 
                child: const Text(
                  "Reset",
                ),
                ),
            ],
            ),
        ),
      );
    }
}