import 'package:flutter/material.dart';

//const Color kColor = Color(0xFF383a47);
//const Color backgroundColor = Color(0xFF383A47);

ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: Colors.white,
    accentColor: const Color(0xFF292B36),
    textTheme: const TextTheme(
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
    ),
    backgroundColor: const Color(0xFF383A47),
    buttonColor: const Color(0xFF5969FF),
    hintColor: Colors.white.withOpacity(0.6),
    appBarTheme: AppBarTheme.of(context).copyWith(
      color: const Color(0xFF292B36),
//      titleTextStyle: const TextStyle(color: Colors.white),
    ),
    scaffoldBackgroundColor: const Color(0xFF383A47),
    dialogBackgroundColor: const Color(0xFF292B36),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF5969FF))),
    ),
  );
}
