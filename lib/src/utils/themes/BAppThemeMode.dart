import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/utils/themes/widget_themes/BTextTheme.dart';
import 'package:flutter_login_app/src/utils/themes/widget_themes/b_TextFieldTheme.dart';
import 'package:flutter_login_app/src/utils/themes/widget_themes/b_elevatedButton_theme.dart';
import 'package:flutter_login_app/src/utils/themes/widget_themes/b_outlineButton_theme.dart';

class BAppColor {
  BAppColor._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: BTextTheme.lightTextTheme,
    outlinedButtonTheme: BOutlineButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: BTextFromFieldTheme.lightTextFromFieldTheme,
    primarySwatch: const MaterialColor(0xFFFFEB3B,
      <int, Color>{
        50: Color(0xFFFFFDE7),
        100: Color(0xFFFFF9C4),
        200: Color(0xFFFFF59D),
        300: Color(0xFFFFF176),
        400: Color(0xFFFFEE58),
        500: Color(0xFFFFEB3B),
        600: Color(0xFFFDD835),
        700: Color(0xFFFBC02D),
        800: Color(0xFFF9A825),
        900: Color(0xFFF57F17),
      },),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: BTextTheme.darkTextTheme,
    outlinedButtonTheme: BOutlineButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: BTextFromFieldTheme.darkTextFromFieldTheme
  );
}
