import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nalift/routes/routes.dart';
import 'package:nalift/screens/login_screen.dart';
import 'package:nalift/screens/main_screen.dart';
import 'package:nalift/services/navigation_service.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  BuildContext? get context => NavigationService.navigatorKey.currentContext;
  User? get authUser => _auth.currentUser;

  /// Check if user is already logged in
  Widget checkAuthExist() {
    if (authUser != null) {
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

  /// Login with email and password
  Future<UserCredential> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw e.toString();
    }
  }

  /// Logout user
  logout() async {
    try {
      await _auth.signOut();
      Navigator.popUntil(context!, (route) => route.isFirst);
    } catch (e) {
      throw "Something went wrong ${e.toString}";
    }
  }
}
