import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://d13dtqinv406lk.cloudfront.net/company/images/4191.png'),
      ),
    );
  }
}
