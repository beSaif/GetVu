import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/BookingScreen/BookingScreen.dart';
import 'package:getvuapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:getvuapp/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:getvuapp/Screens/SupportScreen/SupportScreen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavbarActivity extends StatefulWidget {
  const NavbarActivity({super.key});

  @override
  State<NavbarActivity> createState() => _NavbarActivityState();
}

class _NavbarActivityState extends State<NavbarActivity> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const BookingScreen(),
      const SupportScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      navBarItem(CupertinoIcons.home, "Home"),
      navBarItem(CupertinoIcons.square_list, "Booking"),
      navBarItem(Icons.contact_support_outlined, "Support"),
      navBarItem(CupertinoIcons.profile_circled, "Profile"),
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
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  navBarItem(IconData icon, String title) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon),
      title: (title.toString()),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    );
  }
}
