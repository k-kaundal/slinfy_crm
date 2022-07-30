import 'package:curved_navigation_rail/curved_navigation_rail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../home/home.dart';
import '../profile/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  // int _selectedIndex = 1;
  dynamic selected=0;
  var heart = false;

  List<Widget> widgetList = [
    Home(),
    Home(),
    Home(),
    Profile(),
  ];


  List<AnimatedBarItems> navItems = [
    AnimatedBarItems(
        icon: const Icon(
          Icons.house_outlined,
        ),
        selectedIcon: const Icon(Icons.house_rounded),
        selectedColor: Colors.deepPurple,
        backgroundColor: Colors.amber,
        title: const Text('Home')),
    AnimatedBarItems(
        icon: const Icon(Icons.star_border_rounded),
        selectedIcon: const Icon(Icons.star_rounded),
        selectedColor: Colors.green,
        backgroundColor: Colors.amber,
        title: const Text('Star')),
    AnimatedBarItems(
        icon: const Icon(
          Icons.style_outlined,
        ),
        selectedIcon: const Icon(
          Icons.style,
        ),
        backgroundColor: Colors.amber,
        selectedColor: Colors.deepOrangeAccent,
        title: const Text('Style')),
    AnimatedBarItems(
        icon: const Icon(
          Icons.person_outline,
        ),
        selectedIcon: const Icon(
          Icons.person,
        ),
        backgroundColor: Colors.amber,
        selectedColor: Colors.pinkAccent,
        title: const Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
    body: widgetList[selected],
    //     Stack(
    //       children: [
    //         // Background(),
    //         Container(
    //             child: Row(
    //               children: [
    //               CurvedNavigationRail(
    //               backgroundColor: Colors.white,
    //               color: Color(0xFFFF9945),
    //               //     color: Colors.lightBlueAccent,
    //               width: size.width * 0.12,
    //               selectedIndex: 2,
    //               animationCurve: Curves.linearToEaseOut,
    //               animationDuration: Duration(seconds: 1),
    //               buttonBackgroundColor: Colors.blueAccent,
    //               onDestinationSelected: (index) =>
    //                   setState(() => _selectedIndex = index),
    //             destinations: ),
    //                 DashboardScreens(value: _selectedIndex)
    //       ],
    //     ),
    //   ),
    //
    //   ],
    // ),),
    bottomNavigationBar: StylishBottomBar(items:navItems,
      iconSize: 32,
      barAnimation: BarAnimation.fade,
      iconStyle: IconStyle.animated,
      hasNotch: true,
      fabLocation: StylishBarFabLocation.center,
      opacity: 0.3,
      currentIndex: selected ?? 0,
      onTap: (index) {
        setState(() {
          selected = index;
        });
      },

    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            heart = !heart;
          });
        },
        backgroundColor: Colors.white,
        child: Icon(
          heart ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
          color: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}