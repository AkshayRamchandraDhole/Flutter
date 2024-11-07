import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Demo",
            style: TextStyle(
              
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
           
          ),
          centerTitle: true,
          backgroundColor: Colors.blue
        ),

        body: ListView(
          children:[
            // Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fphotutorial.com%2Fwp-content%2Fuploads%2F2023%2F04%2FFeatured-image-AI-image-generators-by-Midjourney.png&f=1&nofb=1&ipt=b99adeb96e00ad589ad3f45a8dad5231a314ee15e91724a6b603b8e7c3b4f86a&ipo=images"
            // ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            const Icon(
				          Icons.favorite,
				          color:Colors.red
			          ),
			      const Text(
			        	"Bhari",
				        style: TextStyle(
					      fontSize: 30,
					      fontWeight: FontWeight.w500,
            ),
				
			      ),
            // Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FJYs8MDl_bMY%2Fmaxresdefault.jpg&f=1&nofb=1&ipt=f647e1984d95982cc704cc9a575418a8606f24df19f4b25073ddfc9705a18ac0&ipo=images"),
			    Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          GestureDetector(
				    onTap: (){
					  print("Button Pressed");
				},
				child: Container(
					height: 50,
					color: Colors.amber,
					child:const Text("Pree Me"),
				),
			),
           
      
          ]
        )
      ),
    );
  }
}
