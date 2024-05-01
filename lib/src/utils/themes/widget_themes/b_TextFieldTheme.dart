import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';

class BTextFromFieldTheme {
  BTextFromFieldTheme._();

  static InputDecorationTheme lightTextFromFieldTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: bSecondaryColor,
    floatingLabelStyle: TextStyle(color: bSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: bSecondaryColor, width: 3.0),
    ),
  );

  static InputDecorationTheme darkTextFromFieldTheme=InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: bPrimaryColor,
    floatingLabelStyle: TextStyle(color: bWhiteColor),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: bWhiteColor)),
  );
}
