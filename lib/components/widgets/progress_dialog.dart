import 'package:flutter/material.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/helpers/helpers.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelpers.isDarkMode(context);

    return Dialog(
      child: Container(
        padding: EdgeInsets.all(MySizes.spaceBtwItems),
        decoration: BoxDecoration(
          color: isDark ? MyColors.dark : MyColors.light,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            BodyText(message),
          ].gap(width: MySizes.spaceBtwItems),
        ),
      ),
    );
  }
}
