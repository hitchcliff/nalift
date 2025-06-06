import 'package:go_router/go_router.dart';
import 'package:nalift/screens/login_screen.dart';
import 'package:nalift/screens/main_screen.dart';
import 'package:nalift/screens/register_screen.dart';
import 'package:nalift/screens/splash_screen.dart';

class MyGoRouter {
  static String initialRoute = "/"; // splash screen
  static String mainScreen = "/main-screen";
  static String loginScreen = "/login-screen";
  static String registerScreen = "/register-screen";

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const MySplashScreen(),
      ),
      GoRoute(
        path: mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
