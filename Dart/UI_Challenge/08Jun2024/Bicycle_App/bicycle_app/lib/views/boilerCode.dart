import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox getSizedBox({double? w1, double? h1}){
  return SizedBox(
    width: w1,
    height: h1,
  );
}

TextStyle getStylePage1(double fontSize,int r, int g, int b, double op){
  return GoogleFonts.allertaStencil(
      fontWeight: FontWeight.w400 ,
      fontSize: fontSize,
      color: Color.fromRGBO(r, g, b, op),
    );
}

TextStyle getPoppins(double fontSize,int r, int g, int b, double op){
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500 ,
      fontSize: fontSize,
      color: Color.fromRGBO(r, g, b, op),
    );
}

