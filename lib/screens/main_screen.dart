import 'package:flutter/material.dart';
import 'package:nalift/constants/colors.dart';
import 'package:nalift/helpers/helpers.dart';
import 'package:nalift/screens/earnings_screen.dart';
import 'package:nalift/screens/home_screen.dart';
import 'package:nalift/screens/profile_screen.dart';
import 'package:nalift/screens/ratings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIdx = 0;

  itemClick(int index) {
    setState(() {
      selectedIdx = index;
      tabController!.index = selectedIdx;
    });
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: tabController,
          children: [
            HomeScreen(),
            EarningsScreen(),
            RatingsScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIdx,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home_max),
            backgroundColor: isDarkMode ? MyColors.dark : MyColors.light,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Earnings',
            activeIcon: Icon(Icons.credit_score),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Ratings',
            activeIcon: Icon(Icons.stars_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            activeIcon: Icon(Icons.person_add),
          ),
        ],
        onTap: itemClick,
      ),
    );
  }
}
