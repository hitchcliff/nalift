import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/components/auth/header.dart';
import 'package:nalift/components/auth/login_form.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/helpers/helpers.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MyHelpers.screenHeight(context, 1),
            padding: EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Header(
                  titleText: "Login",
                  labelText: "Please fill up the form",
                ),
                const LoginForm(),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
    );
  }
}
