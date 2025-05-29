import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/controllers/register_controller.dart';
import 'package:nalift/models/user_model.dart';

class RegisterNotifier extends StateNotifier<RegisterController> {
  RegisterNotifier(super.state);

  void toggleObscureText(bool payload) {
    state = state.copyWith(obscureText: payload);
  }

  void updateAccountType(UserAccountType payload) {
    state = state.copyWith(accountType: payload);
  }

  void submit() {
    print("USER SUBMIT: ${state.name.text} ${state.accountType}");

    // Validate form
    if (!state.registerFormKey.currentState!.validate()) return;

    // Put inside UserModel
    // Submit in Repository
  }
}
