import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nalift/screens/earnings_screen.dart';
import 'package:nalift/screens/home_screen.dart';
import 'package:nalift/screens/profile_screen.dart';
import 'package:nalift/screens/ratings_screen.dart';

/// To control the pages from Tabs/Navigation
class ScreenController extends GetxController {
  static ScreenController get instance => Get.find();

  TabController? tabController;
  Rx<int> tabIdx = 0.obs;

  tabClick(int idx) {
    tabIdx.value = idx;
    tabController!.index = tabIdx.value;
  }

  final screens = [
    const HomeScreen(),
    const EarningsScreen(),
    const RatingsScreen(),
    const ProfileScreen(),
  ];
}
