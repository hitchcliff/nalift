import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/controllers/login_controller.dart';

class LoginNotifier extends StateNotifier<LoginController> {
  LoginNotifier(super.state);

  void toggleObscureText(bool payload) {
    state = state.copyWith(obscureText: payload);
  }

  void toggleRememberMe(bool payload) {
    state = state.copyWith(rememberMe: payload);
  }

  void toggleLoading(bool payload) {
    state = state.copyWith(loading: payload);
  }

  void submit() {
    // print("LOGIN USER SUBMIT: ${state.email.text}");

    // Update Loading
    toggleLoading(true);

    // Validate form
    if (!state.loginFormKey.currentState!.validate()) {
      // toggleLoading(false);
      return;
    }

    // Show dialog

    // Put inside UserModel
    // Submit in Repository
  }
}
