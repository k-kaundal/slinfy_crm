import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:slinfy_crm/src/ui/auth/login.dart';
import 'package:slinfy_crm/src/ui/home/home.dart';
import 'package:slinfy_crm/src/ui/splash/splash.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: "/",
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
