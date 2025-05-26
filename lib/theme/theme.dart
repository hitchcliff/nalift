import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/theme/bottom_navigation_bar_theme.dart';
import 'package:nalift/theme/elevated_button_theme.dart';
import 'package:nalift/theme/input_decoration_theme.dart';
import 'package:nalift/theme/outline_button.dart';
import 'package:nalift/theme/text_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "Metropolis",
    scaffoldBackgroundColor: MyColors.light,
    primaryColor: MyColors.primary,
    textTheme: MyTextTheme.light,
    elevatedButtonTheme: MyElevatedButtonTheme.light,
    outlinedButtonTheme: MyOutlineButtonTheme.light,
    inputDecorationTheme: MyInputDecorationTheme.light,
    bottomNavigationBarTheme: MyBottomNavigationBarTheme.light,
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Metropolis",
    scaffoldBackgroundColor: MyColors.dark,
    primaryColor: MyColors.dark,
    textTheme: MyTextTheme.dark,
    elevatedButtonTheme: MyElevatedButtonTheme.dark,
    outlinedButtonTheme: MyOutlineButtonTheme.dark,
    inputDecorationTheme: MyInputDecorationTheme.dark,
    bottomNavigationBarTheme: MyBottomNavigationBarTheme.dark,
  );
}
