import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nalift/screens/login_screen.dart';
import 'package:nalift/screens/main_screen.dart';
import 'package:nalift/services/navigation_service.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  BuildContext? get context => NavigationService.navigatorKey.currentContext;

  /// Check if user is already logged in
  Widget checkAuthExist() {
    User? user = _auth.currentUser;

    if (user != null) {
      return MainScreen();
    }

    return LoginScreen();
  }

  /// Register email with password
  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
  }
}
