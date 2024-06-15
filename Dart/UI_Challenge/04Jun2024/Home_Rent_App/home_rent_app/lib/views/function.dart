import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getFontsRectPage1(double x, int r, int g, int b , double op){
  return GoogleFonts.poppins(
                         fontWeight: FontWeight.w600 ,
                          fontSize: x,
                          color: Color.fromRGBO(r,g,b,op),
                        );
}
TextStyle getFontsRectPage1Row2(double x, int r, int g, int b , double op){
  return GoogleFonts.poppins(
                         fontWeight: FontWeight.w400 ,
                          fontSize: x,
                          color: Color.fromRGBO(r,g,b,op),
                        );
}
TextStyle getFontsRectPage2Row1(double x, int r, int g, int b , double op){
  return GoogleFonts.poppins(
                         fontWeight: FontWeight.w500 ,
                          fontSize: x,
                          color: Color.fromRGBO(r,g,b,op),
                        );
}