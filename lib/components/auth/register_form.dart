import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/components/widgets/privacy_policy_checkbox.dart';
import 'package:nalift/components/widgets/progress_dialog.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/helpers/validator.dart';
import 'package:nalift/models/user_model.dart';
import 'package:nalift/providers/register_provider.dart';
import 'package:nalift/utils/icons.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registerProvider);
    final register = ref.read(registerProvider.notifier);

    handleSubmit() {
      register.submit();

      showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (context) => ProgressDialog(message: "Signing up, please wait..."),
      );
    }

    return Form(
      key: provider.registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: provider.name,
            validator: (value) => Validator.validateEmptyText("Name", value),
            decoration: InputDecoration(label: BodyText("Your Name")),
          ),
          TextFormField(
            controller: provider.email,
            validator: (value) => Validator.validateEmail(value),
            decoration: InputDecoration(label: BodyText("Enter email")),
          ),
          TextFormField(
            controller: provider.phone,
            validator: (value) => Validator.validatePhoneNumber(value),
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(label: BodyText("Enter phone number")),
          ),
          DropdownButtonFormField(
            decoration: InputDecoration(labelText: "Account type"),
            items:
                ["Driver", "Passenger"]
                    .map(
                      (option) => DropdownMenuItem(
                        value: option,
                        child: BodyText(option),
                      ),
                    )
                    .toList(),
            onChanged: (value) {
              register.updateAccountType(
                value == "Driver"
                    ? UserAccountType.driver
                    : UserAccountType.passenger,
              );
            },
          ),
          TextFormField(
            controller: provider.password,
            validator: (value) => Validator.validatePassword(value),
            obscureText: provider.obscureText,
            decoration: InputDecoration(
              label: BodyText("Password"),
              suffixIcon: IconButton(
                icon: Icon(
                  provider.obscureText ? MyIcons.eyeSlash : MyIcons.eyeSolid,
                ),
                onPressed: () {
                  register.toggleObscureText(!provider.obscureText);
                },
              ),
            ),
          ),
          TextFormField(
            controller: provider.confirmPassword,
            validator:
                (value) => Validator.validateConfirmPassword(
                  provider.password.text,
                  value!,
                ),
            obscureText: provider.obscureText,
            decoration: InputDecoration(label: BodyText("Confirm Password")),
          ),

          PrivacyPolicyCheckbox(),

          // Sign in
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: handleSubmit,
              child: Text("Register now"),
            ),
          ),

          /// Go to login screen
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Already have an account?"),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
