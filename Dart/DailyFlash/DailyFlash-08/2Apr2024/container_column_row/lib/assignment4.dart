import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{

  const Assignment4({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash-08"),
        backgroundColor: Colors.white,
        shape: Border.all(
          width: 0.5
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder:(context,index){
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal:10

            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.0),
                   image: const DecorationImage(
                    image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F46239%2Fsalmon-dish-food-meal-46239.jpeg%3Fcs%3Dsrgb%26dl%3Dclose-up-cooking-dinner-46239.jpg%26fm%3Djpg&f=1&nofb=1&ipt=dca9c78e4fb9053f5621bb0cf9e0c195e5d323eb293f590a562af88cfa3c14dd&ipo=images",
                    scale: BorderSide.strokeAlignCenter
                    ,
                    
                     ),
                     fit: BoxFit.cover
                   
                   )
                    
                  )
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("NAME",
                style: TextStyle(fontSize: 16),
                )
              ],
            ),
          );
        } 
        
        )
    );
  }
}