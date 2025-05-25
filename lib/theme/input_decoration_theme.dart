import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/constants/sizes.dart';

class MyInputDecorationTheme {
  static InputDecorationTheme light = InputDecorationTheme(
    hintStyle: TextStyle(color: MyColors.darkGrey),
    contentPadding: EdgeInsets.all(MySizes.formPadding),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      borderSide: BorderSide(width: 1, color: MyColors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      borderSide: BorderSide(width: 1, color: MyColors.grey),
    ),
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    hintStyle: TextStyle(color: MyColors.light),
    contentPadding: EdgeInsets.all(MySizes.formPadding),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      borderSide: BorderSide(width: 1, color: MyColors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      borderSide: BorderSide(width: 1, color: MyColors.grey),
    ),
  );
}
