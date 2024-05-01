import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class BOutlineButtonTheme {
  BOutlineButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        // textStyle: TextStyle(color: bDarkColor),
        padding: EdgeInsets.symmetric(vertical: 12.0),
        shape: RoundedRectangleBorder(),
            side: BorderSide(color: bDarkColor, width: 2.0),
        foregroundColor: bDarkColor),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(textStyle: TextStyle(color: bWhiteColor),
          padding: EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(),
            side: BorderSide(color: bWhiteColor, width: 2.0),
          foregroundColor: bWhiteColor,));
}
