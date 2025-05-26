import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/models/login_model.dart';

class LoginNotifier extends StateNotifier<LoginModel> {
  LoginNotifier(super.state);

  void toggleObscureText(bool payload) {
    state = state.copyWith(obscureText: payload);
  }

  void updateEmail(TextEditingController email) {
    state = state.copyWith(email: email);
  }

  void updatePassword(TextEditingController password) {
    state = state.copyWith(password: password);
  }

  void toggleRememberMe(bool payload) {
    state = state.copyWith(rememberMe: payload);
  }
}
