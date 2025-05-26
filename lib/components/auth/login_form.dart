import 'package:flutter/material.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/screens/main_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(label: BodyText("Enter email")),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(label: BodyText("Password")),
          ),

          // remember me & forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
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
              onPressed: () => const MainScreen(),
              child: Text("Sign in"),
            ),
          ),

          // create account btn
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text("Sign up"),
            ),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
