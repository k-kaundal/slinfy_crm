import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:slinfy_crm/src/ui/assignment/assingment.dart';
import 'package:slinfy_crm/src/ui/attendance/attendance.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
import 'package:slinfy_crm/src/ui/events/events.dart';
import 'package:slinfy_crm/src/ui/exam/exam.dart';
import 'package:slinfy_crm/src/ui/get_data_screens/get_attendance.dart';
import 'package:slinfy_crm/src/ui/get_data_screens/get_certificate.dart';
import 'package:slinfy_crm/src/ui/get_data_screens/get_eveluation.dart';
import 'package:slinfy_crm/src/ui/home/models/main_header_data.dart';
import 'package:slinfy_crm/src/ui/progress/progress.dart';
import 'package:slinfy_crm/src/ui/project/project.dart';
import 'package:slinfy_crm/src/ui/task/task.dart';
import 'package:slinfy_crm/src/utils/constants/app_images.dart';

final List imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<Widget> widgetList = [
    Task(),
    Assignment(),
    Attendance(),
    EventsScreen(),
    Exam(),
    Project()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      // backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: ListView(children: [
          Stack(children: [
            Container(
                height: size.height, width: size.width, child: AppBackground()),
            Container(
              height: size.height,
              width: size.width,
              // color: Colors.white30,
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
                                Image.network(
                                    'https://d13dtqinv406lk.cloudfront.net/company/images/4191.png',
                                    width: size.width * 0.5),
                                CircleAvatar(
                                  backgroundImage: AssetImage(AppImages.login),
                                  minRadius: 25,
                                  maxRadius: 35,
                                )
                              ],
                            ),
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: size.width * 0.05,
                              top: size.height * 0.015),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Hello",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                          fontFamily: 'Roboto_Bold'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Kamlesh",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                          fontFamily: 'Roboto_Bold'),
                                    )
                                  ],
                                ),
                                Text(
                                  "Good Morning",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontFamily: 'Roboto_Medium'),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.7,
                    width: size.width,
                    // color: Colors.blueAccent,
                    child: Container(
                      // color: Colors.white10,
                      margin: EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                          top: size.width * 0.06),
                      child: ListView(
                        padding: EdgeInsets.only(
                            top: size.height * 0.05,
                            bottom: size.height * 0.09),
                        shrinkWrap: false,
                        physics: NeverScrollableScrollPhysics(),
                        primary: false,
                        children: [
                          Container(
                            // margin: EdgeInsets.all(size.width * 0.01),
                            width: size.width,
                            // color: Colors.white10,
                            height: 200,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 200,
                                    width: size.width,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        // color: Colors.black12,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                            ),
                                            fit: BoxFit.cover),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       color: Colors.black26,
                                        //       spreadRadius: 5,
                                        //       blurRadius: 30,
                                        //       blurStyle: BlurStyle.outer),
                                        // ],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Column(children: [
                                      Expanded(
                                        child: CarouselSlider(
                                          items: imageSliders,
                                          carouselController: _controller,
                                          options: CarouselOptions(
                                              autoPlay: true,
                                              enlargeCenterPage: true,
                                              aspectRatio: 2.0,
                                              onPageChanged: (index, reason) {
                                                setState(() {
                                                  _current = index;
                                                });
                                              }),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: imgList
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return GestureDetector(
                                            onTap: () => _controller
                                                .animateToPage(entry.key),
                                            child: Container(
                                              width: 10.0,
                                              height: 5.0,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8.0,
                                                  horizontal: 4.0),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: (Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? Colors.white10
                                                          : Colors.black12)
                                                      .withOpacity(
                                                          _current == entry.key
                                                              ? 0.9
                                                              : 0.4)),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ]),
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Progress()));
                                      },
                                      child: Container(
                                        height: 200,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            // color: Colors.black12,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                                ),
                                                fit: BoxFit.cover),
                                            // boxShadow: [
                                            //   BoxShadow(
                                            //       color: Colors.black26,
                                            //       spreadRadius: 5,
                                            //       blurRadius: 30,
                                            //       blurStyle: BlurStyle.outer),
                                            // ],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                // color: Colors.blue,
                                                margin: EdgeInsets.only(top: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      AppImages.checked,
                                                      height: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Progress",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "Roboto_Medium",
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: CircularPercentIndicator(
                                                radius: 40.0,
                                                lineWidth: 10.0,
                                                animation: true,
                                                backgroundColor: Colors.white,
                                                percent: 0.7,
                                                center: Text(
                                                  "70.0%",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                footer: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 15),
                                                  child: Text(
                                                    "All over progress",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12.0,
                                                    ),
                                                  ),
                                                ),
                                                circularStrokeCap:
                                                    CircularStrokeCap.round,
                                                progressColor: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            width: size.width,
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              // image: DecorationImage(
                              //     image: NetworkImage(
                              //       'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                              //     ),
                              //     fit: BoxFit.cover),
                              // color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetCertificate()));
                                      },
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 5,
                                              child: Image.asset(
                                                  AppImages.confirmation)),
                                          Expanded(
                                              flex: 5,
                                              child: Container(
                                                  margin: EdgeInsets.only(top: 7),
                                                  child: Text(
                                                    ' Get Confirmation',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                        "Roboto_Medium",fontSize: 12),
                                                  )))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetCertificate()));
                                      },
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 5,
                                              child: Image.asset(
                                                  AppImages.certification)),
                                          Expanded(
                                              flex: 5,
                                              child: Container(
                                                  margin: EdgeInsets.only(top: 7),
                                                  child: Text(
                                                    ' Get Certificate',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Roboto_Medium",fontSize: 12),
                                                  )))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetAttendance()));
                                      },
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 5,
                                              child: Image.asset(
                                                  AppImages.attendance)),
                                          Expanded(
                                              flex: 5,
                                              child: Container(
                                                  margin: EdgeInsets.only(top: 7),
                                                  child: Text(
                                                    ' Get Attendance',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Roboto_Medium",fontSize: 12),
                                                  )))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetEveluation()));
                                      },
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 5,
                                              child:
                                                  Image.asset(AppImages.approve)),
                                          Expanded(
                                              flex: 5,
                                              child: Container(
                                                  margin: EdgeInsets.only(top: 7),
                                                  child: Text(
                                                    ' Get Eveluation',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Roboto_Medium",fontSize: 12),
                                                  )))
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(size.width * 0.01),
                            // width: size.width * 0.85,
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children:
                                  List.generate(bottomList.length, (int index) {
                                return Container(
                                  width: size.width * 0.6,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a'),
                                          fit: BoxFit.cover),
                                      color: Colors.black12,
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //       color: Colors.black26,
                                      //       spreadRadius: 5,
                                      //       blurRadius: 30,
                                      //       blurStyle: BlurStyle.outer),
                                      // ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 9,
                                          child: Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Image.network(
                                                  bottomList[index].image))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: Text(
                                            bottomList[index].name,
                                            style: TextStyle(
                                                fontFamily: "Roboto_Medium",
                                                fontSize: 13),
                                          )))
                                    ],
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
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.26),
                height: 90,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.white,
                    // image: DecorationImage(
                    //     image: NetworkImage(
                    //       'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                    //     ),
                    //     fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          // spreadRadius: 2,
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                    padding: EdgeInsets.all(size.width * 0.01),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:
                          List.generate(mainHeaderList.length, (int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => widgetList[index]));
                          },
                          child: Container(
                            width: 70,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, top: 2, bottom: 2),
                            height: size.height,
                            decoration: BoxDecoration(
                              // image: DecorationImage(
                              //     image: NetworkImage(
                              //         'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a'),
                              //     fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              mainHeaderList[index].image)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.blue),
                                ),
                                Container(
                                  width: size.width,
                                  height: 20,
                                  margin: EdgeInsets.only(top: 5),
                                  // decoration: BoxDecoration(color: Colors.blue),
                                  child: Center(
                                    child: Text(
                                      mainHeaderList[index].name,
                                      style: TextStyle(
                                        fontFamily: "Roboto_Medium",
                                        fontSize: 11,
                                        // color: Colors.white,
                                        // fontStyle: FontStyle.italic
                                      ),
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
        ]),
      ),
    );
  }
}

final List bottomImgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
List<MainHeaderData> mainHeaderList = [
  MainHeaderData(AppImages.task, 'Task'),
  MainHeaderData(AppImages.assignment, 'Assignment'),
  MainHeaderData(AppImages.attendance, 'Attendance'),
  MainHeaderData(AppImages.event, 'Events'),
  MainHeaderData(AppImages.exam, 'Exam'),
  MainHeaderData(AppImages.clipboard, 'Project')
];

List<BottomData> bottomList = [
  BottomData(bottomImgList[2], 'Change your technology?'),
  BottomData(bottomImgList[1], 'Change your technology?'),
];
