import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';

class MyTextTheme {
  static TextTheme light = TextTheme(
    displayLarge: const TextStyle().copyWith(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      color: MyColors.black,
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: MyColors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color: MyColors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: MyColors.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: MyColors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: MyColors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: MyColors.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: MyColors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: MyColors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: MyColors.black,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      color: MyColors.black.withValues(alpha: .8),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: MyColors.black.withValues(alpha: .8),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
      color: MyColors.black.withValues(alpha: 0.8),
    ),
  );

  static TextTheme dark = TextTheme(
    displayLarge: const TextStyle().copyWith(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      color: MyColors.white,
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: MyColors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color: MyColors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: MyColors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: MyColors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: MyColors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: MyColors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: MyColors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: MyColors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: MyColors.white,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      color: MyColors.white.withValues(alpha: .8),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: MyColors.white.withValues(alpha: .8),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
      color: MyColors.white.withValues(alpha: 0.8),
    ),
  );
}
