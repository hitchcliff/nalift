import 'package:flutter/material.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/services/navigation_service.dart';

class Toaster {
  // final _isDark = MyHelpers.isDarkMode(NavigationService().context!);

  error(String msg) {
    final snackBar = SnackBar(
      content: BodyText(msg, color: MyColors.white),
      backgroundColor: MyColors.googleColor,
      showCloseIcon: true,
      duration: Duration(minutes: 1),
    );
    ScaffoldMessenger.of(NavigationService().context!).showSnackBar(snackBar);
  }

  success(String msg) {
    final snackBar = SnackBar(
      content: BodyText(msg, color: MyColors.white),
      backgroundColor: MyColors.verified,
    );
    ScaffoldMessenger.of(NavigationService().context!).showSnackBar(snackBar);
  }
}
