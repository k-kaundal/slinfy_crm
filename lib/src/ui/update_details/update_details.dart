import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class UpdateDetails extends StatefulWidget {
  const UpdateDetails({Key? key}) : super(key: key);

  @override
  State<UpdateDetails> createState() => _UpdateDetailsState();
}

class _UpdateDetailsState extends State<UpdateDetails> {
  final mKey = GlobalKey();
  final mnKey = GlobalKey();

  onKey() {
    debugPrint(mKey.currentContext.toString());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(

      onTap: () {
        print(mKey.currentContext?.size);
        print(mnKey.currentContext?.widget);
      },
      child: Container(
          key: mKey,
          height: size.height * 0.8,
          width: size.width * 0.8,
          color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "data",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                color: Colors.red,
                height: 30,
                width: 30,
              ),
              Divider(
                height: 10,
                color: Colors.white,
                endIndent: 10,
                indent: 10,
                thickness: 1,
              ),
              Container(
                color: Colors.red,
                height: 30,
                width: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
