import 'package:flutter/material.dart';

class SpacerDemo extends StatelessWidget{
  const SpacerDemo({super.key});

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
                child: Image.network("https://rukminim2.flixcart.com/image/750/900/jf8khow0/poster/a/u/h/small-hollywood-movie-poster-blade-runner-2049-ridley-scott-original-imaf3qvx88xenydd.jpeg?q=20&crop=false",),
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
              Spacer(),
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