import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/constants/sizes.dart';

class MyOutlineButtonTheme {
  static OutlinedButtonThemeData light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.primary,
      textStyle: const TextStyle(fontWeight: FontWeight.w700),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
      side: const BorderSide(color: MyColors.primary),
    ),
  );

  static OutlinedButtonThemeData dark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.white,
      textStyle: const TextStyle(fontWeight: FontWeight.w700),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
      side: const BorderSide(color: MyColors.white),
    ),
  );
}
