import 'package:advance_quiz_app/views/row_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget{

  const ProfileScreen({super.key});

  @override 
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{

  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  
                     Text("Hi Pamela,",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(131, 76, 52, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700
                        )
                    ),
                    ),
                  const SizedBox(
                    height: 15,

                  ),
              //     Container(
              //   height: 64,
              //   width: 64,
              //   //alignment: Alignment.topRight,
              //   decoration: const BoxDecoration(
              //     shape: BoxShape.circle,
              //     color:Color.fromRGBO(250, 188, 154, 1)
              //   ),
              // )
                ],
              ),
              Row(
                      children: [
                        Text("Great to see you again!",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(131, 76, 52, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              
                        )
                        ),
                        )
                      ],
                    ),

              const SizedBox(
                  height: 50,
               ),
              getRowContainer(0),
              const SizedBox(
                height: 20,
              ),
              getRowContainer(1),
              const SizedBox(
                height: 20,
              ),
              getRowContainer(2),
              const SizedBox(
                height: 20,
              ),
              getRowContainer(3),
              const SizedBox(
                height: 20,
              ),
              getRowContainer(4),
             
              
              
             


            ],
          ),
          
        ),
    );
  }
}