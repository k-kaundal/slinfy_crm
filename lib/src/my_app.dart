import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:slinfy_crm/src/ui/auth/add_details.dart';
import 'package:slinfy_crm/src/ui/auth/login_screen.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/login.dart';
import 'package:slinfy_crm/src/ui/auth/register.dart';
import 'package:slinfy_crm/src/ui/dashboard/dashboard.dart';
import 'package:slinfy_crm/src/ui/home/home.dart';
import 'package:slinfy_crm/src/ui/splash/splash.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: "/",
      theme: ThemeData.light(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
