import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nalift/components/texts/body_text.dart';
import 'package:nalift/constants/assets.dart';
import 'package:nalift/constants/sizes.dart';
import 'package:nalift/extensions/list_space_between.dart';
import 'package:nalift/helpers/helpers.dart';
import 'package:nalift/screens/login_screen.dart';
import 'package:nalift/screens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image(
                width: MyHelpers.screenWidth(context, .25),
                image: AssetImage(MyAssets.rocketImg),
              ),
            ),
            CircularProgressIndicator(),
          ].gap(height: MySizes.spaceBtwItems),
        ),
      ),
    );
  }
}
