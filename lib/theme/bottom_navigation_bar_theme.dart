import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/theme/text_theme.dart';

class MyBottomNavigationBarTheme {
  static BottomNavigationBarThemeData light = BottomNavigationBarThemeData(
    unselectedItemColor: MyColors.dark,
    selectedItemColor: MyColors.primary,
    showUnselectedLabels: true,
    unselectedLabelStyle: MyTextTheme.light.bodyMedium,
    selectedLabelStyle: MyTextTheme.light.bodyMedium,
  );

  static BottomNavigationBarThemeData dark = BottomNavigationBarThemeData(
    unselectedItemColor: MyColors.light,
    selectedItemColor: MyColors.primary,
    showUnselectedLabels: true,
    unselectedLabelStyle: MyTextTheme.light.bodyMedium,
    selectedLabelStyle: MyTextTheme.light.bodyMedium,
  );
}
