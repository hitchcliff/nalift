import 'package:flutter/widgets.dart';
import 'package:nalift/models/user_model.dart';

class RegisterModel extends UserModel {
  const RegisterModel({
    required super.name,
    required super.email,
    required super.phone,
    required this.password,
    required this.confirmPassword,
    required this.registerFormKey,
    required this.obscureText,
  });

  final String password;
  final String confirmPassword;
  final GlobalKey<FormState> registerFormKey;
  final bool obscureText;

  /// Copy with
  RegisterModel copyWith({
    String? name,
    String? email,
    String? phone,
    String? password,
    String? confirmPassword,
    GlobalKey<FormState>? registerFormKey,
    bool? obscureText,
  }) => RegisterModel(
    name: name ?? this.name,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    password: password ?? this.password,
    confirmPassword: confirmPassword ?? this.confirmPassword,
    registerFormKey: registerFormKey ?? this.registerFormKey,
    obscureText: obscureText ?? this.obscureText,
  );

  /// Empty function
  static RegisterModel empty() => RegisterModel(
    name: "",
    email: "",
    phone: "",
    password: "",
    confirmPassword: "",
    registerFormKey: GlobalKey<FormState>(),
    obscureText: true,
  );
}
