import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';

bool kIsDarkMode(BuildContext context) {
  return Theme.of(context).scaffoldBackgroundColor == MyColors.dark;
}
