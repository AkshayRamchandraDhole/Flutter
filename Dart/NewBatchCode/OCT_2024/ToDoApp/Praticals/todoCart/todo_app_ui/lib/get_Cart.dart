import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

List cardColorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(255, 255, 255, 1),
    const Color.fromRGBO(250,249,232,1)
];
Container getCart(int index1){
  return Container(
              height: 112,
              width: 330,
              
              decoration:BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: cardColorList[index1 % cardColorList.length],
                boxShadow: const[
                   BoxShadow(
                    blurRadius: 2.2,
                    spreadRadius: 2.2,
                    color: Color.fromRGBO(0, 0, 0, 0.1)
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(255, 255, 255, 1)
                            ),
                          )
                        ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Lorem Ipsum is simply setting industry.",
                              style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 243,
                            child: Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(84, 84, 84, 1),
                          ),
                            
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10 July 2023",
                        style: GoogleFonts.quicksand(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(132, 132, 132, 1)
                        ),
                        ),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Container(
                              height: 13,
                              width: 13,
                              child: SvgPicture.asset("assets/svg/edit.svg"),
                              ),
                             const SizedBox(
                              width: 10,
                             ),
                             Container(
                              height: 13,
                              width: 13,
                              child: SvgPicture.asset("assets/svg/delete.svg"),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
}