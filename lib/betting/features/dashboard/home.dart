import 'package:betting_app/betting/features/bet/view/my_bet_screen.dart';
import 'package:betting_app/betting/features/dashboard/view/home_fragment.dart';
import 'package:betting_app/betting/features/news/view/news_screen.dart';
import 'package:betting_app/betting/features/profile/view/profile_screen.dart';
import 'package:betting_app/betting/features/sports/view/sports_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../util/helper/color.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeFragment(),
      SportScreen(),
      MyBetScreen(),
      NewsScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_outlined, size: 25),
        title: "Home",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.gamepad, size: 25),
        title: "Sports",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(
          FontAwesomeIcons.dashboard,
          size: 22.0,
        ),
        title: "My Bet",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(
          FontAwesomeIcons.newspaper,
          size: 18.0,
        ),
        title: "Profile",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person, size: 25),
        title: "Profile",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: PersistentTabView(
            context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineToSafeArea: true,
            backgroundColor: secondaryColor,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            navBarStyle: NavBarStyle.style3,
            onItemSelected: (index) {
              controller.currentIndex.value = index;
              print("Selected Index: $index");
            },
          ),
        );
      },
    );
  }
}
