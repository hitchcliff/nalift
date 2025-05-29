import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/helpers/validator.dart';
import 'package:nalift/providers/login_provider.dart';
import 'package:nalift/screens/register_screen.dart';
import 'package:nalift/utils/icons.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(loginProvider);
    final login = ref.read(loginProvider.notifier);

    return Form(
      key: provider.loginFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: provider.email,
            validator: (value) => Validator.validateEmptyText("Email", value),
            decoration: InputDecoration(label: BodyText("Enter email")),
          ),
          TextFormField(
            controller: provider.password,
            validator:
                (value) => Validator.validateEmptyText("Password", value),
            obscureText: provider.obscureText,
            decoration: InputDecoration(
              label: BodyText("Password"),
              suffixIcon: IconButton(
                icon: Icon(
                  provider.obscureText ? MyIcons.eyeSlash : MyIcons.eyeSolid,
                ),
                onPressed: () {
                  login.toggleObscureText(!provider.obscureText);
                },
              ),
            ),
          ),

          // remember me & forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: provider.rememberMe,
                    onChanged: (value) {
                      ref.read(loginProvider.notifier).toggleRememberMe(value!);
                    },
                  ),
                  const Text("Remember me"),
                ],
              ),

              /// Go to forgot password screen
              TextButton(
                onPressed: () {},
                child: const Text("Forgot password"),
              ),
            ],
          ),

          // Sign in
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: login.submit,
              child: Text("Login"),
            ),
          ),

          // create account btn
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => RegisterScreen()),
                );
              },
              child: const Text("Register now"),
            ),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
