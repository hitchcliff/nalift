// ignore: file_names
import 'package:flutter/material.dart';

double kScreenHeight(context, {double percent = 1}) {
  return MediaQuery.of(context).size.height * percent;
}
