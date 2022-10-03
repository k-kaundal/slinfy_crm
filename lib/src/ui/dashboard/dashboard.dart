import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/auth/login_screen.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/login.dart';
import 'package:slinfy_crm/src/ui/dashboard/widgets/action_button.dart';
import 'package:slinfy_crm/src/ui/dashboard/widgets/expanded_fab.dart';
import 'package:slinfy_crm/src/ui/update_details/update_details.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../home/home.dart';
import '../profile/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];

  // int _selectedIndex = 1;
  dynamic selected = 0;
  var heart = false;

  List<Widget> widgetList = [
    Home(),
    UpdateDetails(),
    LoginScreen(),
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
    Size size = MediaQuery.of(context).size;
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
      bottomNavigationBar: StylishBottomBar(
        items: navItems,
        iconSize: 32,
        barAnimation: BarAnimation.fade,
        // backgroundColor:  Color(0xFFABD1F5),
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
            heart = heart ? false : true;
          });
        },
        backgroundColor: Colors.white,
        child: Icon(
          heart ? CupertinoIcons.heart : CupertinoIcons.heart_fill,
          color: Colors.red,
        ),
      ),

      // ExpandableFab(
      //   distance: 112.0,
      //   children: [
      //     ActionButton(
      //       onPressed: () => _showAction(context, 0),
      //       icon: const Icon(Icons.format_size),
      //     ),
      //     ActionButton(
      //       onPressed: () => _showAction(context, 1),
      //       icon: const Icon(Icons.insert_photo),
      //     ),
      //     ActionButton(
      //       onPressed: () => _showAction(context, 2),
      //       icon: const Icon(Icons.videocam),
      //     ),
      //   ],
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }
}
