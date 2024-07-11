import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_2/persistent_tab_view.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';
import 'package:ui_task/views/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late final PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Center(
        child: Text('Welcome To second screen'),
      ),
      const Center(
        child: Text('Welcome To Third screen'),
      ),
      const Center(
        child: Text('Welcome To Fourth screen'),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.house),
        title: ('Shop'),
        activeColorPrimary: FattoAppColors.mainColor,
        inactiveColorPrimary: FattoAppColors.inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_cart_outlined),
        title: ("Cart"),
        activeColorPrimary: FattoAppColors.mainColor,
        inactiveColorPrimary: FattoAppColors.inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite_outline),
        title: ("Favorite"),
        activeColorPrimary: FattoAppColors.mainColor,
        inactiveColorPrimary: FattoAppColors.inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline),
        title: ("Account"),
        activeColorPrimary: FattoAppColors.mainColor,
        inactiveColorPrimary: FattoAppColors.inActiveIconColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
