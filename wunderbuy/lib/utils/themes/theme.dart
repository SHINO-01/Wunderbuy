import "package:flutter/material.dart";

class CAppTheme{ //C as in custom classes
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green[400],
    scaffoldBackgroundColor: Colors.white,

  );
  static ThemeData darkTheme = ThemeData();

}