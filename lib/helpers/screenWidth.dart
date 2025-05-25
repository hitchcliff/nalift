import 'package:flutter/material.dart';

double kScreenWidth(context, {double percent = 1.0}) {
  return MediaQuery.of(context).size.width * percent;
}
