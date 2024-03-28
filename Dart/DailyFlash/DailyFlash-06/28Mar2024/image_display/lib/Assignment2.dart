import 'package:flutter/material.dart';


class Assignment2 extends StatelessWidget{

  const Assignment2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Display"),
          backgroundColor: Colors.blue,

          
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
       
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                      Container(
                        
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100)
                          )
                        ),
                        child: Image.network("https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*",
                        height: 200,
                        width: 200,                
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      
                      SizedBox(
                        height: 70,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: (){

                        },
                        
                        style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.purple,
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)
                         )
                        ),

                        child: const Text('Add To Cart',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                        
                        ),
                        ),
                      )
 
              ],
            ),
            ),
        
    );
  }
}
