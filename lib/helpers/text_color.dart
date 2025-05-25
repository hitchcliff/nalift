import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/helpers/isDarkMode.dart';

enum TextColor { reverse }

Color kTextColor({required BuildContext context, TextColor? textColor}) {
  bool isDark = kIsDarkMode(context);

  switch (textColor) {
    case TextColor.reverse:
      return isDark ? MyColors.black : MyColors.white;
    default:
      return isDark ? MyColors.white : MyColors.dark;
  }
}
