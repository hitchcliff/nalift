import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/components/widgets/toaster.dart';
import 'package:nalift/controllers/register_controller.dart';
import 'package:nalift/models/user_model.dart';
import 'package:nalift/repository/auth_repository.dart';
import 'package:nalift/repository/user_repository.dart';
import 'package:nalift/routes/routes.dart';
import 'package:nalift/services/navigation_service.dart';

class RegisterNotifier extends StateNotifier<RegisterController> {
  RegisterNotifier(super.state);

  final AuthRepository _authRepository = AuthRepository();
  final UserRepository _userRepository = UserRepository();
  final NavigationService _navigationService = NavigationService();

  void toggleObscureText(bool payload) {
    state = state.copyWith(obscureText: payload);
  }

  void updateAccountType(UserAccountType payload) {
    state = state.copyWith(accountType: payload);
  }

  void toggleLoading(bool payload) {
    state = state.copyWith(loading: payload);
  }

  void togglePrivacyPolicy(bool payload) {
    state = state.copyWith(privacyPolicy: payload);
  }

  submit() async {
    try {
      // Validate form
      if (!state.registerFormKey.currentState!.validate()) return;

      // Check privacy policy
      if (!state.privacyPolicy) {
        Toaster().error("Please agree to Privacy Policy and Terms of use");

        await NavigationService().pop(1);
        return;
      }

      // Register email and password
      final userCredential = await _authRepository.registerWithEmailAndPassword(
        state.email.text.trim(),
        state.password.text.trim(),
      );

      // Put inside UserModel
      final user = UserModel(
        id: userCredential.user!.uid,
        name: state.name.text.trim(),
        email: state.email.text.trim(),
        phone: state.phone.text.trim(),
        accountType: state.accountType.name,
      );

      // Store in database
      await _userRepository.save(user);

      // Success
      await NavigationService().pop(0);
      Toaster().success('Registered succesfully!');

      // Redirect user
      Navigator.pushNamed(_navigationService.context!, Routes.mainScreen);
    } catch (e) {
      Toaster().error(e.toString());
      await NavigationService().pop(1);
    }
  }
}
