import 'dart:async';

import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  BuildContext? get context => NavigationService.navigatorKey.currentContext;

  Future<bool> pop(int wait) async {
    await Future.delayed(
      Duration(seconds: wait),
      () => Navigator.pop(context!),
    );
    return true;
  }

  push(Widget page) {
    Navigator.push(context!, MaterialPageRoute(builder: (context) => page));
  }
}
