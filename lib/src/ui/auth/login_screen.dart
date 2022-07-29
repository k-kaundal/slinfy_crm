import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/background.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/login.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Background(),
          Login(),
        ],
      ),

    );
  }
}
