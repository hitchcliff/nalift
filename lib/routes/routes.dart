import 'package:flutter/material.dart';
import 'package:nalift/screens/login_screen.dart';
import 'package:nalift/screens/main_screen.dart';
import 'package:nalift/screens/register_screen.dart';

class Routes {
  const Routes(this.context);

  final BuildContext context;

  static String initialRoute = "/"; // splash screen
  static String mainScreen = "/main-screen";
  static String loginScreen = "/login-screen";
  static String registerScreen = "/register-screen";

  static Map<String, Widget Function(BuildContext)> screens = {
    mainScreen: (context) => MainScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
  };
}
