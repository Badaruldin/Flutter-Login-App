import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class BElevatedButtonTheme {
  BElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        elevation: 0,
        shape: RoundedRectangleBorder(),
            side: BorderSide(color: Colors.white12, width: 2.0),
        foregroundColor: bWhiteColor,
    backgroundColor: bDarkColor),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        shape: RoundedRectangleBorder(),
            side: BorderSide(color: Colors.white12, width: 2.0),
        foregroundColor: bDarkColor,
    backgroundColor: bWhiteColor),
  );
}
