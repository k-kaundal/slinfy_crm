import 'package:curved_navigation_rail/curved_navigation_rail.dart';
import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/auth/login_screen.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/background.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/login.dart';

import '../home/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _selectedIndex = 1;

  List<NavigationRailDestination> navRailDest = [
    NavigationRailDestination(
        icon: Icon(Icons.home, color: Colors.white,), label: Text('Home')),
    NavigationRailDestination(
        icon: Icon(Icons.home, color: Colors.white,), label: Text('Home')),
    NavigationRailDestination(
        icon: Icon(Icons.home, color: Colors.white,), label: Text('Home')),
    NavigationRailDestination(
        icon: Icon(Icons.home, color: Colors.white,), label: Text('Home'))
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            // Background(),
            Container(
                child: Row(
                  children: [
                  CurvedNavigationRail(
                  backgroundColor: Colors.white,
                  color: Color(0xFFFF9945),
                  //     color: Colors.lightBlueAccent,
                  width: size.width * 0.12,
                  animationCurve: Curves.linearToEaseOut,
                  animationDuration: Duration(seconds: 1),
                  buttonBackgroundColor: Colors.blueAccent,
                  onDestinationSelected: (index) =>
                      setState(() => _selectedIndex = index),
                destinations: navRailDest),
                    DashboardScreens(value: _selectedIndex)
          ],
        ),
      ),

      ],
    ),)
    ,
    );
  }
}

class DashboardScreens extends StatelessWidget {
  DashboardScreens({Key? key, required this.value}) : super(key: key);
  List<Widget> widgetList = [
    Home(),
    Home(),
    Home(),
    Home(),
    Home(),
    LoginScreen(),
  ];

  final int value;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(child: widgetList[value]));
  }
}