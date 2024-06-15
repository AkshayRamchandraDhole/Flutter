import 'package:flutter/material.dart';
import 'package:home_rent_app/views/details_page.dart';
import 'package:home_rent_app/views/function.dart';
class HomePage extends StatefulWidget{

  const HomePage({super.key});

  @override 
  State createState()=> _HomePageState();
}

class _HomePageState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
     //backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 21,
                      width: 90,
                      child: Text("Hey Dravid,",
                      style: getFontsRectPage2Row1(14, 101, 101, 101, 1),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle
                      ),
                      child: Image.asset("Ellipse1.png"),
                    )
                  ],
                ),
                

              ),
              const SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 188,
                        child: Text("Let’s find your best residence",
                          style: getFontsRectPage2Row1(20, 0, 0, 0, 1),
                        ),
                        )
                    ],
                    ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                          
                        Container(
                          height: 46,
                          width: 446,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search your favourite paradise',
                              hintStyle: getFontsRectPage2Row1(13, 33, 33, 33, 1),
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none
                              ),
                              filled: true,
                              fillColor: Colors.white
                          
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Most popular",
                      style: getFontsRectPage1(22, 0, 0, 0, 1),
                      ),
                      const Spacer(),
                      Container(
                        height: 24,
                        width: 74,
                        child: Text("See All",
                        style: getFontsRectPage2Row1(16, 32, 169, 247, 1),
                        ),
                      )
                    ],
                  ),
                ),

                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 306,
                        width: 211,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 196,
                                width: 189,
                                child: Image.asset("Rectangle5.png"),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Night Hill Villa",
                                style: getFontsRectPage1(16, 0, 0, 0, 1),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("London,Night Hill",
                                style: getFontsRectPage2Row1(10, 72, 72, 72, 1),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("5900 ",
                                style: getFontsRectPage2Row1(12, 32, 169, 247, 1),
                                ),
                                Text("/Month",
                                style: getFontsRectPage2Row1(10, 72, 72, 72, 1),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),


                    const SizedBox(
                      width: 10,
                    ),

                    Container(
                        height: 306,
                        width: 211,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 196,
                                width: 189,
                                child: Image.asset("Rectangle5.png"),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Night Villa",
                                style: getFontsRectPage1(16, 0, 0, 0, 1),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("London,Night Hill",
                                style: getFontsRectPage2Row1(10, 72, 72, 72, 1),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("4900 ",
                                style: getFontsRectPage2Row1(12, 32, 169, 247, 1),
                                ),
                                Text("/Month",
                                style: getFontsRectPage2Row1(10, 72, 72, 72, 1),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),



                    ],
                  ),
                ),

                Row(
                  children: [
                    Text("Nearby your location",
                    style: getFontsRectPage1(22, 0, 0, 0, 1),
                    ),
                    const Spacer(),
                    Text("More",
                    style: getFontsRectPage1Row2(16, 32, 169, 247, 1),
                    )
                  ],
                ),

                Row(
                  children: [
                    Container(
                      height: 78,
                      width: 346,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset("Rectangle8.png"),
                                ),
                              )
                            ],
                          ),

                          const SizedBox(
                            width: 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                             // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jumeriah Golf Estates Villa",
                                style: getFontsRectPage1(10, 0, 0, 0, 1),
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      child: Image.asset("map-pin.png"),
                                      ),
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      Text("London,Area Plam Jumeriah",
                                      style: getFontsRectPage1(9, 90, 90, 90, 1),
                                      )
                                  ],
                                
                                ),


                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      child: Image.asset("couch.png"),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text("4 Bedrooms",
                                      style: getFontsRectPage1(9, 90, 90, 90, 1),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),

                                      Container(
                                      height: 10,
                                      width: 10,
                                      child: Image.asset("bath.png"),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text("5 Bathrooms",
                                      style: getFontsRectPage1(9, 90, 90, 90, 1),
                                      ),

                                  ],
                                
                                ),

                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 180,
                                    ),
                                    Text("4500 ",
                                    style: getFontsRectPage2Row1(10, 32, 169, 247, 1),
                                    ),
                                    Text("/Month",
                                    style: getFontsRectPage2Row1(10, 90, 90, 90, 1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                    )
                  ],
                )
            ],
          ),
        ) 
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                           const DetailsPage()
                          
                          )
                        );
      },
      child: const Text("Next"),
      ),
    );
  }
}