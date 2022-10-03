import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/login.dart';
import 'package:slinfy_crm/src/ui/dashboard/dashboard.dart';

import 'blocs/authentication/authentication_bloc.dart';
class BlocNative extends StatelessWidget {
  const BlocNative({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: (context,state){
      if(state is AuthenticationSuccess){
        return const Dashboard();
      }else{
        return const Login();
      }
    });
  }
}
