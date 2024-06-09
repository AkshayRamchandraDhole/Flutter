import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PlayerPage extends StatefulWidget{
  const PlayerPage({super.key});

  @override 
  State createState() => _PlayerPageState();
}

class _PlayerPageState extends State{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        body: Stack(
          children:[ 
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 551,
                width: 390,
                child: Image.asset("/player.jpg"),
              ),
          
            ],

          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 450,
                ),
                Text(
                  
                  "Alone in the Abyss",
                  style: GoogleFonts.inter(
                                     //fontWeight: FontWeight.w600 ,
                                      fontSize: 24,
                                      color: const Color.fromRGBO(255, 61, 0, 1),
                                    ),
                                   // textAlign: TextAlign.center,
                ),

                Text(
                  
                  "Youlakou",
                  style: GoogleFonts.inter(
                                     //fontWeight: FontWeight.w600 ,
                                      fontSize: 24,
                                      color: const Color.fromRGBO(255, 61, 0, 1),
                                    ),
                                   // textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 200,
                ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       height: 35,
          //       width: 35,
          //       child: Image.asset("radix.jpg",
          //       scale: 1,
          //       ) ,
          //     )
          //   ],
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Dynamic Warmup",
                style: GoogleFonts.inter(
                                       //fontWeight: FontWeight.w600 ,
                                        fontSize: 14,
                                        color: const Color.fromRGBO(255, 255, 255, 1),
                                      ),
                ),

                const SizedBox(
                  width: 180,
                ),

                Text("4 min",
                style: GoogleFonts.inter(
                                       //fontWeight: FontWeight.w600 ,
                                        fontSize: 14,
                                        color: const Color.fromRGBO(255, 255, 255, 1),
                                      ),
                ),

              ],
            ),
            
                ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                    // LinearProgressIndicator(
                      // value: 0.4,
                     //  backgroundColor: Color.fromRGBO(230, 154, 21, 1),
                      //  valueColor: Color.fromRGBO(230, 154, 21, 1),
                   //   )
                   Container(
                    width: 370,
                    height: 6,
                    color: Color.fromRGBO(217, 217, 217, 1),
                   child: Container(
                    width: 97,
                    height: 6,
                    color: Color.fromRGBO(230, 154, 21, 1),
                   ),
                   )
                    ],
                                   ),
                 ),
                 

                 const Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.shuffle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      
                      // SizedBox(width: 2,),


                      Icon(Icons.fast_rewind_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      ),

                      Icon(Icons.stop_circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      ),

                      Icon(Icons.fast_forward_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      ),

                      Icon(Icons.volume_up_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ],
                   ),
                 )
              ],
            ),
            
          ),
          const SizedBox(
            height: 2,
          ),

          
          
          ]
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
        currentIndex: 0,
        selectedItemColor: const Color.fromRGBO(248, 162, 69, 1),
       backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        ),
    );
  }
}