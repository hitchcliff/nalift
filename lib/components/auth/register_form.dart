import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/providers/register_provider.dart';
import 'package:nalift/screens/login_screen.dart';
import 'package:nalift/utils/icons.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registerProvider);
    final register = ref.read(registerProvider.notifier);

    return Form(
      key: provider.registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            onChanged: (value) => register.updateEmail(value),
            decoration: InputDecoration(label: BodyText("Enter email")),
          ),
          TextFormField(
            onChanged: (value) => register.updatePhone(value),
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(label: BodyText("Enter phone number")),
          ),
          TextFormField(
            onChanged: (value) => register.updatePassword(value),
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
            onChanged: (value) => register.updateConfirmPassword(value),
            obscureText: provider.obscureText,
            decoration: InputDecoration(label: BodyText("Confirm Password")),
          ),

          // Sign in
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed:
                  () => {
                    // handle register
                  },
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
