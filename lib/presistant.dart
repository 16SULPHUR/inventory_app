import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_app/home.dart';
import 'package:inventory_app/tools.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'add.dart';

final user = FirebaseAuth.instance.currentUser;

class MyHomePage1 extends StatefulWidget {
  final String dropdownValue;
  final List<CameraDescription>? cameras;

  MyHomePage1({required this.dropdownValue, required this.cameras});

  static const String routeName = "/signup";

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
  // onWillPop: () async {
  //   return true;
  // },
  child: PersistentTabView(
    context,
    controller: _controller,
    screens: _buildScreens(),
    items: _navBarsItems(),
    confineToSafeArea: true,
    backgroundColor: Colors.white, // Default is Colors.white.
    handleAndroidBackButtonPress: true, // Default is true.
    resizeToAvoidBottomInset: false, // Changed to false to prevent layout issues
    navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : 60.0, // Adjust height with keyboard
    stateManagement: true, // Default is true.
    decoration: NavBarDecoration(
      borderRadius: BorderRadius.circular(0),
      colorBehindNavBar: Colors.white,
    ),
    // popAllScreensOnTapOfSelectedTab: true,
    // popActionScreens: PopActionScreensType.all,
    // itemAnimationProperties: ItemAnimationProperties(
    //   duration: Duration(milliseconds: 200),
    //   curve: Curves.ease,
    // ),
    // screenTransitionAnimation: ScreenTransitionAnimation(
    //   animateTabTransition: true,
    //   curve: Curves.ease,
    //   duration: Duration(milliseconds: 200),
    // ),
    navBarStyle: NavBarStyle.style10, // Choose the nav bar style with this property.
  ),
),

    );
  }

  List<Widget> _buildScreens() {
    return [
      Home(dropdownValue: widget.dropdownValue, cameras: widget.cameras),
      Tools(dropdownvalue: widget.dropdownValue, cameras: widget.cameras),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: "Tools",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
