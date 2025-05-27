import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/models/register_model.dart';

class RegisterNotifier extends StateNotifier<RegisterModel> {
  RegisterNotifier(super.state);

  void toggleObscureText(bool payload) {
    state = state.copyWith(obscureText: payload);
  }

  void updateName(String payload) {
    state = state.copyWith(name: payload);
  }

  void updateEmail(String payload) {
    state = state.copyWith(email: payload);
  }

  void updatePhone(String payload) {
    state = state.copyWith(phone: payload);
  }

  void updatePassword(String payload) {
    state = state.copyWith(password: payload);
  }

  void updateConfirmPassword(String payload) {
    state = state.copyWith(confirmPassword: payload);
  }

  void updateAccountType(String payload) {
    state = state.copyWith(accountType: payload.toLowerCase());
  }
}
