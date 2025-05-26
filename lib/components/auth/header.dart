import 'package:flutter/material.dart';
import 'package:nalift/components/texts/label_text.dart';
import 'package:nalift/components/texts/title_text.dart';
import 'package:nalift/constants/assets.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(height: 50, image: AssetImage(MyAssets.rocketImg)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TitleText("Login"), LabelText("Please fill up the form")],
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
