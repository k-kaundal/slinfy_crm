import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/background.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
import 'package:slinfy_crm/src/ui/auth/widgets/wavy_header.dart';

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
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            // AppBackground(),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //
            // )
            Container(
              width: size.width,
              height: size.height * 0.3,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Hello",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500, fontFamily: 'Roboto_Bold'),), Text("Kamlesh",style: TextStyle(fontSize: 35,color: Colors.black54,fontFamily: 'Roboto_Bold'),)]),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/login.png'),
                          minRadius: 25,
                          maxRadius: 35,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
