import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Container getContainer(double height,double weight){
  return Container(
    height: height,
    width: weight,
    child: Text("Find The Best Collection",
    style: getStylePage1(42, 13, 13, 14, 1)
    ),
  );
}

TextStyle getStylePage1(double fontSize,int r, int g, int b, double op){
  return GoogleFonts.imprima(
      fontWeight: FontWeight.w400 ,
      fontSize: fontSize,
      color: Color.fromRGBO(r, g, b, op),
    );
}

Container getContainerPage11(double height,double weight){
  return Container(
    height: height,
    width:  weight,
    child: Text("Get your dream item easily with FashionHub and get other intersting offer",
    style: getStylePage1(15, 121, 119, 128, 1),
    ),
  );
}

Container getBrandPeople(){
  return Container(
                    height: 32,
                    width: 354,
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromRGBO(255, 122, 0, 1)
                          ),
                          child: Text("All",
                          textAlign: TextAlign.center,
                          style: getStylePage1(16, 255, 255, 255, 1),
                          ),
                        ),

                        Container(
                          height: 32,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            
                          ),
                          child: Text("Men",
                          textAlign: TextAlign.center,
                          style: getStylePage1(16, 13, 13, 14, 1),
                          ),
                        ),

                        Container(
                          height: 32,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            
                          ),
                          child: Text("Women",
                          textAlign: TextAlign.center,
                          style: getStylePage1(16, 13, 13, 14, 1),
                          ),
                        ),

                        Container(
                          height: 32,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            
                          ),
                          child: Text("Kids",
                          textAlign: TextAlign.center,
                          style: getStylePage1(16, 13, 13, 14, 1),
                          ),
                        ),

                        Container(
                          height: 32,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            
                          ),
                          child: Text("Others",
                          textAlign: TextAlign.center,
                          style: getStylePage1(16, 13, 13, 14, 1),
                          ),
                        ),


                      ],
                    ),
                   );
}

Column getHomePageColumn(double h1, double w1,Image img, double h11, double w11, double h111, double w111, double h1111, double w1111, Image img1,double ch1, double cw1){
  return Column(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h1,
                          width: w1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              img,
                              Container(
                                height: h11,
                                width: w11,
                                child: Text("240.32",
                                style: getStylePage1(16, 13, 13, 14, 1),
                                ),
                              ),

                              Container(
                                height: h111,
                                width: w111,
                                child: Text("Tagerine Shirt",
                                style: getStylePage1(12, 121, 119, 128, 1),
                                ),
                              ),
                            ],
                          ),
                        ),


                        Container(
                          height: h1111,
                          width: w1111,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: ch1,
                                width: cw1,
                                child: Container(
                                  child: img1,
                                ),
                              ),
                              Container(
                                height: 18,
                                width: 60,
                                child: Text("126.47",
                                style: getStylePage1(16, 13, 13, 14, 1),
                                ),
                              ),

                              Container(
                                height: 18,
                                width: 60,
                                child: Text("Tagerine Shirt",
                                style: getStylePage1(12, 121, 119, 128, 1),
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    );
}

Container getCartPageContainer(Image img1, String s1){
  return Container(
                height: 170,
                width: 415,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Column(
                      children: [
                          Container(
                          height: 142,
                          width: 108,
                          child: img1,
                          )
                      ],
                    ),
                  
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Container(
                          height: 44,
                          width: 119,
                          child: Text(s1,
                          style: getStylePage1(16, 13, 13, 14, 1),
                          ),
                        ),


                        Container(
                          height: 39,
                          width: 39,
                          child: Text("Yellow Size 8",
                          style: getStylePage1(14, 121, 119, 128, 1),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 26,
                              width: 82,
                              child: Text("257.85",
                              style: getStylePage1(22, 13, 13, 14, 1),
                              ),
                            ),

                            Container(
                              height: 34,
                              width: 35,
                              child: Text("1x",
                              style: getStylePage1(28, 13, 13, 14, 1),
                              ),
                            )

                          ],
                        )
                    ],
                  ),

                  Container(
                    height: 55,
                    width: 92,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color : const Color.fromRGBO(255, 122, 0, 1)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Icon(
                          Icons.favorite,
                        ),
                        
                        Icon(
                          Icons.delete,
                        ),
                      ],
                    ),


                  ),

                  ],
                ),
              );
}

Row getRowCartPage(String s1, String s2){
  return Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(s1,
                        style: getStylePage1(18, 121, 119, 128, 1),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Text(s2,
                        style: getStylePage1(18, 13, 13, 14, 1),
                        )
                      ],
                    );
}