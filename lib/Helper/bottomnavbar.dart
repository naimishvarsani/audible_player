// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, use_key_in_widget_constructors, prefer_final_fields

import 'package:audible_player/Helper/utility.dart';
import 'package:audible_player/Screens/category.dart';
import 'package:audible_player/Screens/dashboard.dart';
import 'package:audible_player/Screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashBoardView extends StatefulWidget {
  @override
  State<DashBoardView> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoardView> {
  var currentIndex = 0;

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  List<Widget> _NavScreens() {
    return [
      DashBoard(),
      CategoryScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      bottombarIcon(EdgeInsets.all(12), Icons.home),
      bottombarIcon(EdgeInsets.all(12), Icons.category),
      bottombarIcon(EdgeInsets.all(12), Icons.person),
    ];
  }

  Widget body() {
    return Stack(
      children: [
        PersistentTabView(
          context,
          controller: _controller,
          screens: _NavScreens(),
          items: _navBarsItems(),
          handleAndroidBackButtonPress: true,
          decoration: NavBarDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(-5, 0),
                blurRadius: 25,
                color: AppColor.bgcolor,
              ),
            ],
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.bgcolor,
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: false,
          hideNavigationBar:
              MediaQuery.of(context).orientation == Orientation.landscape,
          navBarHeight: 75,
          itemAnimationProperties:
              ItemAnimationProperties(curve: Curves.linear),
          navBarStyle: NavBarStyle.style6,
          onItemSelected: (val) {
            setState(() {
              currentIndex = val;
            });
          },
        ),
      ],
    );
  }

  PersistentBottomNavBarItem bottombarIcon(EdgeInsets padding, icons) {
    return PersistentBottomNavBarItem(
      icon: Icon(icons,color: AppColor.primarylinear),
    );
  }
}
