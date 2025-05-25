import 'package:flutter/material.dart';

enum MyTextType { large, medium, small }

class DisplayText extends StatelessWidget {
  const DisplayText(
    this.text, {
    super.key,
    this.color,
    this.textType = MyTextType.large,
  });

  final String text;
  final Color? color;
  final MyTextType? textType;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          textType == MyTextType.large
              ? Theme.of(context).textTheme.headlineLarge?.apply(color: color)
              : textType == MyTextType.medium
              ? Theme.of(context).textTheme.headlineMedium?.apply(color: color)
              : Theme.of(context).textTheme.headlineSmall?.apply(color: color),
    );
  }
}
