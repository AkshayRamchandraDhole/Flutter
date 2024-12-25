import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

getFonts(double fontSize){
  return GoogleFonts.quicksand(
    fontSize: fontSize,
    fontWeight: FontWeight.w600,
  );
}
Color getColor(int x1, int x2, int y1, double y2){
  return Color.fromRGBO(x1, x2, y1, y2);
}