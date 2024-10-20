import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkSecondary = Color(0xffFACC1D);
  static const bool isDark = true;
  static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'Messiri'),
      titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontFamily: 'Messiri'),
      titleSmall: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Messiri'),
      titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Messiri'),

    ),
    cardTheme: CardTheme(
        shadowColor: Colors.transparent,
        elevation: 30,
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        color: Colors.white,
        surfaceTintColor: null),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 40),
        unselectedIconTheme: IconThemeData(size: 40),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
      primary: lightPrimary,
      onPrimary: Colors.white,
      onSecondary: lightPrimary,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Messiri'),
        titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'Messiri'),
        titleSmall: TextStyle(
            color: darkSecondary,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'Messiri'),
        titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'Messiri'),

      ),
      cardTheme: CardTheme(
          elevation: 30,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          color: darkPrimary,
          surfaceTintColor: null),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 40),
          selectedItemColor: darkSecondary,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: darkPrimary,
          onPrimary: Colors.white,
          onSecondary: darkSecondary));
}
