import 'package:fashion_app/views/boilerCode.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
class DetailsPage extends StatefulWidget{

  const DetailsPage({super.key});

  @override
  State createState ()=> _DetailsPageState();
}

class _DetailsPageState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(

            children: [
              Center(
                child: Container(
                  width: 315,
                  height: 30,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          const SizedBox(
                            width: 130,
                          ),
                        Container(
                          height: 18,
                          width: 54,
                          child: Text("Details",
                          style: getStylePage1(15, 13, 13, 14, 1),
                          ),
                        ),
                      
                     const SizedBox(
                      width: 100,
                     ),
                     const Icon(
                        Icons.bookmark_border
                      )
                  ],),
                ),
              ),
              Container(
               height: 400,
               width: 315,
                child: Image.asset("page31.png"),
              ),

              Row(
                //mainAxisAlignment: MainAxisAlignment.,
                children: [
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 68,
                    width: 209,
                    child: Text("Premium Tagerine Shirt",
                    style: getStylePage1(25 , 13, 13, 14, 1),
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                       // child: Image.asset("name"),
                      ),
                      Container(
                        height: 24,
                        width: 24,
                      ),
                      Container(
                        height: 24,
                        width: 24,
                      ),

                    ],
                  ),

                ],
              ),

              Container(
                height: 78,
                width: 314,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 41,
                          child: Text("Size",
                          style: getStylePage1(20, 13, 13, 14, 1),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("S",
                        style: getStylePage1(24, 121, 119, 128, 1),
                        ),
                        Text("M",
                        style: getStylePage1(24, 121, 119, 128, 1),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromRGBO(13, 13, 14, 1),
                          ),
                          child: Text("L",
                          textAlign: TextAlign.center,
                          style: getStylePage1(24, 121, 119, 128, 1),
                          ),
                        ),
                        Text("XL",
                        style: getStylePage1(24, 121, 119, 128, 1),
                        ),
                        Text("XXL",
                        style: getStylePage1(24, 121, 119, 128, 1),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
              
              Row(
                      children: [
                        const SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 36,
                          width: 120,
                          child: Text("257.85",
                          style: getStylePage1(32, 13, 13, 14, 1),
                          ),
                        ),

                        const SizedBox(
                            width: 30,
                        ),

                        Container(
                          height: 62,
                          width: 162,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 122, 0, 1))
                            ),
                            onPressed: (){
                              Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> CartPage()
                       )
                       );
                            }, 
                          child: Text("Add To Cart",
                          style: getStylePage1(18, 255, 255, 255, 1),
                          )
                          ),
                        )
                      ],
                    )
            ],
          ),
          )
        ),
    );
  }
}
