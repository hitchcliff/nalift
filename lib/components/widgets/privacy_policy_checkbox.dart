import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/controllers/register_controller.dart';
import 'package:nalift/notifiers/register_notifier.dart';
import 'package:nalift/providers/register_provider.dart';

class PrivacyPolicyCheckbox extends ConsumerWidget {
  const PrivacyPolicyCheckbox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    RegisterController provider = ref.watch(registerProvider);
    RegisterNotifier register = ref.read(registerProvider.notifier);

    ThemeData theme = Theme.of(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: provider.privacyPolicy,
            onChanged: (value) {
              register.togglePrivacyPolicy(value!);
            },
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "I agree to ", style: theme.textTheme.bodySmall),
              TextSpan(
                text: "Privacy Policy ",
                style: theme.textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: MyColors.primary,
                  decorationColor: MyColors.primary,
                ),
              ),
              TextSpan(text: "and ", style: theme.textTheme.bodySmall),
              TextSpan(
                text: "Terms of use",
                style: theme.textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: MyColors.primary,
                  decorationColor: MyColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
