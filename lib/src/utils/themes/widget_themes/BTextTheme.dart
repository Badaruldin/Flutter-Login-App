import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';

class BTextTheme {
  BTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(color: bDarkColor,fontWeight: FontWeight.bold,fontSize: 28.0),
    headlineMedium: TextStyle(color: bDarkColor,fontWeight: FontWeight.w700,fontSize: 24.0),
    headlineSmall: TextStyle(color: bDarkColor,fontWeight: FontWeight.w700,fontSize: 22.0),

    displayLarge: TextStyle(color: bDarkColor,fontWeight: FontWeight.w600,fontSize: 16.0),
    displayMedium: TextStyle(color: bDarkColor,fontWeight: FontWeight.w600,fontSize: 16.0),
    displaySmall: TextStyle(color: bDarkColor,fontWeight: FontWeight.normal,fontSize: 16.0),

  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle(color: bWhiteColor,fontWeight: FontWeight.bold,fontSize: 28.0),
    headlineMedium: TextStyle(color: bWhiteColor,fontWeight: FontWeight.w700,fontSize: 24.0),
    headlineSmall: TextStyle(color: bWhiteColor,fontWeight: FontWeight.w700,fontSize: 22.0),

    displayLarge: TextStyle(color: bWhiteColor,fontWeight: FontWeight.w600,fontSize: 16.0),
    displayMedium: TextStyle(color: bWhiteColor,fontWeight: FontWeight.w600,fontSize: 16.0),
    displaySmall: TextStyle(color: bWhiteColor,fontWeight: FontWeight.normal,fontSize: 16.0),

  );
}
