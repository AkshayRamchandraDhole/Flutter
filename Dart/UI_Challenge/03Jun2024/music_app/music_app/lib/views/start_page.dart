import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/views/gallery.dart';
class StartPage extends StatefulWidget{
  const StartPage({super.key});

  @override 
  State createState() => _StartPageState();
}
class _StartPageState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        children: [
          Image.asset("assets/homeimg.jpg"),
          Center(
            child: Column(
              children:[

                const SizedBox(
                    height: 400,
                ),
                Container(
                  height: 115,
                  width: 314,
                  child: Text(
                    '''Dancing between\nThe shadows\nOf rhythm''',
                        style: GoogleFonts.inter(
                         //fontWeight: FontWeight.w600 ,
                          fontSize: 26,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                  ),

                ),
                
                Container(
                  height: 47,
                  width: 261,
                  child: ElevatedButton(
                    
                    onPressed: (){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> GalleryPage()
                       )
                       );


                    }, 
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 46, 0, 1))
                    ),
                    child: Text("Get started",
                    style: GoogleFonts.inter(
                           //fontWeight: FontWeight.w600 ,
                            fontSize: 16,
                            color: const Color.fromRGBO(19, 19, 19, 1),
                          ),
                    ),
                    ),
                ),
                  const SizedBox(
                    height: 5,
                  ),

                  Container(
                    height: 47,
                    width: 261,
                    child: ElevatedButton(
                    
                    onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> GalleryPage()
                       )
                       );
                    }, 
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(19, 19, 19, 1))
                    ),
                    child: Text("Continue With Email",
                    style: GoogleFonts.inter(
                           //fontWeight: FontWeight.w600 ,
                            fontSize: 16,
                            color: const Color.fromRGBO(255, 61, 0, 1),
                          ),
                    ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 34,
                    width: 227,
                    child: Text("by continuing you agree to terms \n of services and  Privacy policy",
                      style: GoogleFonts.inter(
                         //fontWeight: FontWeight.w600 ,
                          fontSize: 14,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                    ),
                  )


              ]
            ),
          )
        ],
      ),
    );
  }
}