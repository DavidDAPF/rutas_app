import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFE1B1E5);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,

      //AppBar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        elevation: 0,
      ),
      iconTheme: const IconThemeData(
        color: Colors.indigo,
      ),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.indigo,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black,
  );
}
