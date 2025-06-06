import 'package:flutter/widgets.dart';
import 'package:nalift/models/user_model.dart';

class RegisterController {
  RegisterController({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword,
    required this.registerFormKey,
    required this.obscureText,
    required this.accountType,
    required this.loading,
    required this.privacyPolicy,
  });

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  UserAccountType accountType = UserAccountType.passenger;

  bool obscureText;
  final GlobalKey<FormState> registerFormKey;
  bool loading;
  bool privacyPolicy;

  /// Copy with
  RegisterController copyWith({
    TextEditingController? name,
    TextEditingController? email,
    TextEditingController? phone,
    TextEditingController? password,
    TextEditingController? confirmPassword,
    UserAccountType? accountType,
    bool? obscureText,
    bool? loading,
    bool? privacyPolicy,
  }) => RegisterController(
    name: name ?? this.name,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    password: password ?? this.password,
    confirmPassword: confirmPassword ?? this.confirmPassword,
    accountType: accountType ?? UserAccountType.passenger,
    obscureText: obscureText ?? this.obscureText,
    registerFormKey: registerFormKey,
    loading: loading ?? false,
    privacyPolicy: privacyPolicy == true ? true : false,
  );

  /// Empty function
  static RegisterController empty() => RegisterController(
    name: TextEditingController(),
    email: TextEditingController(),
    phone: TextEditingController(),
    password: TextEditingController(),
    confirmPassword: TextEditingController(),
    accountType: UserAccountType.passenger,
    registerFormKey: GlobalKey<FormState>(),
    obscureText: true,
    loading: false,
    privacyPolicy: false,
  );
}
