import 'package:flutter/cupertino.dart';

class LoginController {
  LoginController({
    required this.obscureText,
    required this.email,
    required this.password,
    required this.loginFormKey,
    required this.rememberMe,
    required this.loading,
  });

  final TextEditingController email;
  final TextEditingController password;

  bool obscureText;
  bool rememberMe;
  final GlobalKey<FormState> loginFormKey;
  bool loading;

  /// Copy with to handle updating the state
  LoginController copyWith({
    bool? obscureText,
    TextEditingController? email,
    TextEditingController? password,
    GlobalKey<FormState>? loginFormKey,
    bool? rememberMe,
    bool? loading,
  }) {
    return LoginController(
      obscureText: obscureText ?? this.obscureText,
      email: email ?? this.email,
      password: password ?? this.password,
      loginFormKey: loginFormKey ?? this.loginFormKey,
      rememberMe: rememberMe ?? this.rememberMe,
      loading: loading ?? false,
    );
  }

  /// Empty function
  static LoginController empty() {
    return LoginController(
      email: TextEditingController(),
      password: TextEditingController(),
      rememberMe: false,
      obscureText: true,
      loginFormKey: GlobalKey<FormState>(),
      loading: false,
    );
  }
}
