import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/views/player.dart';
class GalleryPage extends StatefulWidget{
  const GalleryPage({super.key});

  @override 
  State createState() => _GalleryPageState();
}
class _GalleryPageState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: SafeArea(
        child: Stack(
          children: [
          Image.asset("/nextpage.jpg"),
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("A.L.O.N.E",
                  style: GoogleFonts.inter(
                               //fontWeight: FontWeight.w600 ,
                                fontSize: 36,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> const PlayerPage()
                       )
                       );
                  }, 
                  style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 46, 0, 1))
                      ),
                  child: Text("Subscribe",
                      style: GoogleFonts.inter(
                             //fontWeight: FontWeight.w600 ,
                              fontSize: 16,
                              color: const Color.fromRGBO(19, 19, 19, 1),
                            ),
                  ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                    
                  
                    
                     
                         Container(
                          height: 310,  
                          width: 350,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(19, 19, 0, 1),
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Discography",
                                  style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 16,
                                          color: const Color.fromRGBO(255, 46, 0, 1),
                                        ),
                                  ),
                                      
                                  // const SizedBox(
                                  //   width: 100,
                                  // ),
                                  Spacer(),
                                      
                                  Text(
                                    "See all",
                                    style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(248, 162, 69, 1),
                                        ),  
                                      
                                  ),
                                      
                                ],
                                ),

                             Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          
                                          Container(
                                              height: 140,
                                              width: 119,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15.0)
                                              ),
                                              child: Image.asset("/second1.jpg"),
                                             ),
                                             
                                                                      Text("Dead inside",
                                          style: GoogleFonts.inter(
                                                  //fontWeight: FontWeight.w600 ,
                                                  fontSize: 12,
                                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                                                      ), 
                                                                      ),
                                                          
                                                                      Text("2020",
                                          style: GoogleFonts.inter(
                                                  //fontWeight: FontWeight.w600 ,
                                                  fontSize: 10,
                                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                                                      ), 
                                                                      ),
                                        ],
                                      ),

                                      // const SizedBox(
                                      //   width: 2,
                                      // ),

                                      Column(
                                       //crossAxisAlignment: CrossAxisAlignment.start,
                                        
                                        children: [
                                          
                                          Container(
                                              height: 140,
                                              width: 119,
                                              
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15.0)
                                              ),
                                              child: Image.asset("/thirdpage.jpg"),
                                             ),
                                             
                                             
                                          Text("Alone",
                                          style: GoogleFonts.inter(
                                                  //fontWeight: FontWeight.w600 ,
                                                  fontSize: 12,
                                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                                                      ), 
                                                                      ),
                                                          
                                          Text("2023",
                                          style: GoogleFonts.inter(
                                                  //fontWeight: FontWeight.w600 ,
                                                  fontSize: 10,
                                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                                                      ), 
                                                                      ),
                                        ],
                                      ),


                                Column(
                                       //crossAxisAlignment: CrossAxisAlignment.start,
                                        
                                        children: [
                                          
                                          Container(
                                              height: 140,
                                              width: 95,
                                              
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15.0)
                                              ),
                                              child: Image.asset("/second3.jpg"),
                                             ),
                                             
                                             
                                          Text("Heartless",
                                          style: GoogleFonts.inter(
                                                  //fontWeight: FontWeight.w600 ,
                                                  fontSize: 12,
                                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                                                      ), 
                                                                      ),
                                                          
                                          Text("2023",
                                          style: GoogleFonts.inter(
                                                  //fontWeight: FontWeight.w600 ,
                                                  fontSize: 10,
                                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                                                      ), 
                                                                      ),
                                        ],
                                      ),



                                    ],
                                  ),
                                ),


                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Popular singles",
                                  style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 14,
                                          color: const Color.fromRGBO(203, 200, 200, 1),
                                        ),
                                  ),
                                      
                                  // const SizedBox(
                                  //   width: 100,
                                  // ),
                                  Spacer(),
                                      
                                  Text(
                                    "See all",
                                    style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(248, 162, 69, 1),
                                        ),  
                                      
                                  ),
                                      
                                ],
                                ),
                                
                                Row(
                                  children:[
                                    Column(
                                      children: [
                                        Container(
                                          height: 72,
                                          width: 67,
                                          child: Image.asset("/second21.jpg"),
                                        
                                        ),
                                      ],
                                    ),

                                    const SizedBox(
                                        width: 5,
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("We Are Chaos",
                                        style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(203, 200, 200, 1),
                                        ), 
                                        ),

                                      Row(
                                        children: [
                                          Text( "2023",
                                              style: GoogleFonts.inter(
                                             //fontWeight: FontWeight.w600 ,
                                              fontSize: 10,
                                              color: const Color.fromRGBO(132, 125,125, 1),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Text("*",
                                          style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 10,
                                          color: const Color.fromRGBO(203, 200, 200, 1),
                                        ),
                                          ),

                                          const SizedBox(
                                            width: 2,
                                          ),

                                           Text("Easy Living",
                                          style: GoogleFonts.inter(
                                         //fontWeight: FontWeight.w600 ,
                                          fontSize: 8,
                                          color: const Color.fromRGBO(132, 125,125, 1),
                                        ),
                                          ),

                                          const SizedBox(
                                            width : 150,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: 5,
                                                width: 5,
                                                decoration: const BoxDecoration(
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(3.0)
                                                      ),
                                                      color: const Color.fromRGBO(217, 217, 217, 1)
                                                ),
                                              ),
                                              Container(
                                                height: 5,
                                                width: 5,
                                                decoration: const BoxDecoration(
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(3.0)
                                                      ),
                                                      color: const Color.fromRGBO(217, 217, 217, 1)
                                                ),
                                              ),
                                              Container(
                                                height: 5,
                                                width: 5,
                                                decoration: const BoxDecoration(
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(3.0)
                                                      ),
                                                      color: const Color.fromRGBO(217, 217, 217, 1)
                                                ),
                                              )
                                            ],
                                          )

                                        ],
                                      )
                                      ],
                                    )
                                  ]
                                )
                                 
                            ],
                          ),
                            
                         
                         
                         
                         
                         
                         
                         ),
                         const SizedBox(
                          height: 5,
                         ),
                  
                 
                    
                  
              ],
            ),
          )
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,
            color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Favorite',
           // backgroundColor:  Color.fromRGBO(157, 178, 206, 1),
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.search,
            color: Color.fromRGBO(157, 178, 206, 1),),
            label: 'Search',
           // backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Home',
           // backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard,
            color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Cart',
           backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person,
            color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Profile',
           // backgroundColor: Color.fromRGBO(157, 178, 206, 1),
            ),
            
        ],
        currentIndex: 4,
        selectedItemColor: const Color.fromRGBO(248, 162, 69, 1),
       backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        ),
    );
  }
}