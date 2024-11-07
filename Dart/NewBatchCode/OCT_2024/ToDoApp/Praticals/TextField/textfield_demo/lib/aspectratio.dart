import 'package:flutter/material.dart';

class MainApp2 extends StatefulWidget {
   const MainApp2({super.key});

   @override
   State<MainApp2> createState() => _MainApp2State();
}
class _MainApp2State extends State<MainApp2>{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AspectRatio Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            
            child: //Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.theinsaneapp.com%2Fwp-content%2Fuploads%2F2023%2F05%2FBing-Image-Creator-Prompts.jpg&f=1&nofb=1&ipt=fea07f5fc99cc1c796eb3fba5527b98c3d9f3e10e9fc2063940739e98f0a95e7&ipo=images",
              //fit: BoxFit.cover,
            //),
            Image.network("https://static-cse.canva.com/blob/1625993/ComposeStunningImages6.jpg"),
            // Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2015%2F04%2F04%2F19%2F13%2Fone-706897_960_720.jpg&f=1&nofb=1&ipt=8c91a4a810f8ac019e2a86e9ee9d4c1f01e42c0c0316d284e24574044a62ec44&ipo=images",
            // fit: BoxFit.cover,
            // )
          
        )
      ),
      )
    );
  }
}
