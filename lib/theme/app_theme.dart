import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,
    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0.0,
    ),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, elevation: 5.0),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: Colors.indigo,
      shape: const StadiumBorder(),
      elevation: 0.0,
    )),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: primary,
    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
  );
}
