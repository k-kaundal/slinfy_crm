import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slinfy_crm/src/utils/helpers/responsive_helper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveHelper.isMobile(context)?Drawer():null,
      appBar: ResponsiveHelper.isMobilePhone()
          ? AppBar(
              title: Text("Home"),
              centerTitle: false,

            )
          : PreferredSize(
              preferredSize: Size.fromHeight(context.height),
              child: Container()),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(),
        ),
      ),
    );
  }
}
