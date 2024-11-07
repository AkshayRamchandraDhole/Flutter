import 'package:flutter/material.dart';

class AssetsDemo extends StatelessWidget{
  const AssetsDemo({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expanded Demo"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
               Container(
                height: 200,
                width: 200,
                // color: Colors.amber
                child: Image.asset(
                  "assets/second21.jpg"
                ),
              ),
              const Row(
                children: [
                   Icon(
                Icons.favorite_border_outlined
              ),
              Icon(
                Icons.comment_outlined
              ),
               Icon(
                Icons.share_rounded
              ),
              // Spacer(),
               Icon(
                Icons.bookmark_rounded
              ),
                ],
              )
            
          ]
        )
      ),
    );
  }
}