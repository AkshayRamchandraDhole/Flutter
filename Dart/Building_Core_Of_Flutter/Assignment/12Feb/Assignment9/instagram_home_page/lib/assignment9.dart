import 'package:flutter/material.dart';
//import 'package:like_button/like_button.dart';
class Assignment9 extends StatefulWidget{
  const Assignment9({super.key});

  @override
  State<Assignment9> createState() => _Assignment9State();
} 

class _Assignment9State extends State<Assignment9>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Instagram",
        style: TextStyle(fontStyle: FontStyle.italic,
        color: Colors.black,
        fontSize: 30
        ),
        ),
        actions: const[
           Icon(
            Icons.favorite_outline_rounded,
            color: Colors.red,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.message_sharp,
            color: Colors.red, 
          ),
        ],
      ),
      body: Column(
        children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-james-wheeler-414612.jpg&fm=jpg",
                width : double.infinity,
                ),
                Row(
                  children: [
                     /*const LikeButton(
                          size: 30,
                          likeCount: 1,
                          //countPostion: CountPostion.bottom,
                        ), */
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send,
                        ),
                        ),


                        /// Next Button
                        /// 
                        
                       
                  ],
                )
                
              ],
            )
      ]),
    );
  }
}