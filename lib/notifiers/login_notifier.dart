import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/components/widgets/toaster.dart';
import 'package:nalift/controllers/login_controller.dart';
import 'package:nalift/repository/auth_repository.dart';
import 'package:nalift/routes/routes.dart';
import 'package:nalift/services/navigation_service.dart';

class LoginNotifier extends StateNotifier<LoginController> {
  LoginNotifier(super.state);

  final AuthRepository _authRepository = AuthRepository();

  void toggleObscureText(bool payload) {
    state = state.copyWith(obscureText: payload);
  }

  void toggleRememberMe(bool payload) {
    state = state.copyWith(rememberMe: payload);
  }

  void toggleLoading(bool payload) {
    state = state.copyWith(loading: payload);
  }

  void submit() async {
    try {
      // Validate form
      if (!state.loginFormKey.currentState!.validate()) {
        // toggleLoading(false);
        return;
      }

      /// TO DO: Save data if `rememberMe` is true

      /// Login with email and password
      await _authRepository.loginWithEmailAndPassword(
        state.email.text.trim(),
        state.password.text.trim(),
      );

      /// Stop the loading animation
      await NavigationService().pop(0);
      Toaster().success("Logged in succesfully!");

      /// Redirect user to mainscreen
      Navigator.pushNamed(NavigationService().context!, Routes.mainScreen);
    } catch (e) {
      Toaster().error(e.toString());
      await NavigationService().pop(0);
    }
  }
}
