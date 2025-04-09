import 'package:flutter/material.dart';
import 'package:flt_proj/Screen/home_screen.dart';
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color:Colors.white,
            fontSize: 80,
            fontFamily: 'parisienne'
          ),
          displayMedium: TextStyle(
            color:Colors.white,
            fontSize: 50,
            fontFamily: 'sunflower',
            fontWeight: FontWeight.w700,

          ),
          bodyLarge: TextStyle(
            color:Colors.white,
            fontFamily: 'sunflower',
            fontSize: 30,
          ),
          bodyMedium: TextStyle(
            color:Colors.white,
            fontFamily: 'sunflower',
            fontSize: 20,
          ),
        )
      ),
      home:HomeScreen(),
    ),
  );
}

