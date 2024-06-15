import 'package:flutter/material.dart';
import 'package:home_rent_app/views/function.dart';
class DetailsPage extends StatefulWidget{

  const DetailsPage({super.key});

  @override 
  State createState()=> _DetailsPageState();
}

class _DetailsPageState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Details",
                  style: getFontsRectPage2Row1(20, 0, 0, 0, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      height: 244,
                      width: 346,
                      child: Stack(
                        //alignment: Alignment.topLeft,
                        children: [
                          Image.asset("Rectangle6.png"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 27.04,
                              width: 55.96,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color.fromRGBO(32, 169, 247, 1)
                              ),
                              child: Row(
                                children: [
                                  const Icon(Icons.star,
                                  color: Colors.amber,
                                  ),
                                  Text("4.9",
                                  style: getFontsRectPage2Row1(12, 255, 255, 255, 1),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Container(
              child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                      children: [
                          Container(
                            height: 33,
                            width: 164,
                            child: Text("Night Hill Villa",
                            style: getFontsRectPage1(22, 0, 0, 0, 1),
                            ),
                          ),
                      ],
                                     ),
                   ),
              
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                      children: [
                        Container(
                          height: 23,
                          width: 126,
                          child: Text("London,Night Hill",
                          style: getFontsRectPage2Row1(12, 72, 72, 72, 1),
                          ),
                        )
                      ],
                                      ),
                    ),
                ],
              ),
            ),


            const SizedBox(
              width: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                          height: 24,
                          //width: 115,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 180,
                              ),
                              Text("5900 ",
                                style: getFontsRectPage1(14, 32, 169, 247, 1),
                              ),
                              Text("/Month",
                                style: getFontsRectPage1(14, 72, 72, 72, 1),
                              ),
                            ],
                          ),
                        )
              ],
            )

                ],
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.greenAccent
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.bed_outlined),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Bedrooms",
                          style: getFontsRectPage1(14, 90, 90, 90, 1),         
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("5",
                          style: getFontsRectPage1(14, 0, 0, 0, 1),         
                          )
                        ],
                      ),
                    ),
                  ),


                Container(
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.greenAccent
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.bathroom_outlined),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Bathrooms",
                          style: getFontsRectPage1(14, 90, 90, 90, 1),         
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("6",
                          style: getFontsRectPage1(14, 0, 0, 0, 1),         
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.greenAccent
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(Icons.square_foot),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Square ft",
                          style: getFontsRectPage1(14, 90, 90, 90, 1),         
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("7,000 sq ft",
                          style: getFontsRectPage1(14, 0, 0, 0, 1),         
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: 
                Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet")),
            )

            ],
          ),
          ),
          ),
          floatingActionButton: Container(
            height: 55,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              //color: const Color.fromRGBO(32, 169, 247, 1),
            ),
            child: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
            onPressed: (){},
            child: Text("Rent Now",
            style: getFontsRectPage1Row2(22, 255, 255, 255, 1),
            ),
          ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          
    );
  }
}