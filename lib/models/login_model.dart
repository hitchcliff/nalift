import 'package:flutter/cupertino.dart';

@immutable
class LoginModel {
  const LoginModel({
    required this.obscureText,
    required this.email,
    required this.password,
    required this.loginFormKey,
    required this.rememberMe,
  });

  // final TextEditingController email = TextEditingController();
  final bool obscureText;
  final TextEditingController email;
  final TextEditingController password;
  final GlobalKey<FormState> loginFormKey;
  final bool rememberMe;

  LoginModel copyWith({
    bool? obscureText,
    TextEditingController? email,
    TextEditingController? password,
    GlobalKey<FormState>? loginFormKey,
    bool? rememberMe,
  }) {
    return LoginModel(
      obscureText: obscureText ?? this.obscureText,
      email: email ?? this.email,
      password: password ?? this.password,
      loginFormKey: loginFormKey ?? this.loginFormKey,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }

  static LoginModel empty() {
    return LoginModel(
      obscureText: true,
      email: TextEditingController(),
      password: TextEditingController(),
      loginFormKey: GlobalKey<FormState>(),
      rememberMe: false,
    );
  }
}
