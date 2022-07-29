import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/background.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            AppBackground(),
            Align(
              alignment: Alignment.bottomCenter,
              child: GNav(
                  rippleColor: Colors.grey, // tab button ripple color when pressed
                  hoverColor: Colors.grey, // tab button hover color
                  haptic: true, // haptic feedback
                  tabBorderRadius: 15,
                  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
                  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
                  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
                  curve: Curves.easeOutExpo, // tab animation curves
                  duration: Duration(milliseconds: 100), // tab animation duration
                  gap: 4, // the tab button gap between icon and text
                  color: Colors.grey[800], // unselected icon color
                  activeColor: Colors.purple, // selected icon and text color
                  iconSize: 24, // tab button icon size
                  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.home,
                      text: 'Likes',
                    ),
                    GButton(
                      icon: Icons.home,
                      text: 'Search',
                    ),
                    GButton(
                      icon: Icons.home,
                      text: 'Profile',
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
