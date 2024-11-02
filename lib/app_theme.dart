import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
        brightness: Brightness.dark,
      ),
      //textTheme: GoogleFonts.hennyPennyTextTheme(),
      //textTheme: GoogleFonts.jollyLodgerTextTheme(),
      //textTheme: GoogleFonts.atmaTextTheme(),
      textTheme: GoogleFonts.krankyTextTheme(),
    );
  }
}
