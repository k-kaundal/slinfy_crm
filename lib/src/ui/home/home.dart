import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slinfy_crm/src/utils/constants/app_images.dart';

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
      // backgroundColor: Colors.grey,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(children: [
          Column(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Container(
                      margin: EdgeInsets.all(size.width * 0.05),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://d13dtqinv406lk.cloudfront.net/company/images/4191.png',width: size.width*0.5),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/login.png'),
                              minRadius: 25,
                              maxRadius: 35,
                            )
                          ],
                        ),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:size.width * 0.05),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'),
                            ),
                            Text(
                              "Kamlesh",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black54,
                                  fontFamily: 'Roboto_Bold'),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.7,
                width: size.width,
                color: Colors.blue,
                child: Container(
                  margin: EdgeInsets.only(left: size.width * 0.03,right: size.width * 0.03,top: size.width * 0.06),
                  child: ListView(
                    children: [
                      Container(
                        // margin: EdgeInsets.all(size.width * 0.01),
                        width: size.width,
                        height: 200,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Card(
                                  child: Container(
                                    // margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(size.width * 0.01),
                        // width: size.width * 0.85,
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(10, (int index) {
                            return Card(
                              child: Container(
                                width: size.width * 0.6,
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.26),
              height: 95,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.lightBlueAccent,
                  //       spreadRadius: 10,
                  //       blurRadius: 30),
                  // ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                  padding: EdgeInsets.all(size.width * 0.01),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(10, (int index) {
                      return Card(
                        // elevation: 5,
                        color: Colors.blue[index * 100],
                        child: Container(
                          width: 60,
                          height: size.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.assignment,
                                height: 50,
                              ),
                              Container(
                                width: size.width,
                                height: 19,
                                // decoration: BoxDecoration(color: Colors.blue),
                                child: Center(
                                  child: Text(
                                    "Demo",
                                    style: TextStyle(
                                        fontFamily: "Roboto_Simple",
                                        fontSize: 15,
                                        // color: Colors.white,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
