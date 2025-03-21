import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App Basic Colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFB0C7FF);

  //text colors
  static const Color textprimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  //Gradient colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, 0.707),
      colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)]);

  //Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.textWhite;

  //Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonsecondary = Color(0xFF6C7570);
  static const Color buttondisabled = Color(0xFFC4C4C4);

  //Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

//Error and Validation Color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color.fromARGB(255, 23, 134, 1);
  static const Color warning = Color.fromARGB(255, 159, 161, 2);
  static const Color info = Color.fromARGB(255, 53, 16, 187);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
