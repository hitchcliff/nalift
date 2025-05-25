import 'package:flutter/material.dart';
import 'package:nalift/helpers/isDarkMode.dart';
import 'package:nalift/helpers/screenHeight.dart';
import 'package:nalift/helpers/screenWidth.dart';
import 'package:nalift/helpers/text_color.dart';

class MyHelpers {
  static double screenWidth(BuildContext context, double percent) {
    return kScreenWidth(context, percent: percent);
  }

  static double screenHeight(BuildContext context, double percent) {
    return kScreenHeight(context, percent: percent);
  }

  static bool isDarkMode(BuildContext context) {
    return kIsDarkMode(context);
  }

  static Color textColor({
    required BuildContext context,
    TextColor? textColor,
  }) {
    return kTextColor(context: context, textColor: textColor);
  }
}
