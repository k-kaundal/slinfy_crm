import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
import 'package:slinfy_crm/src/utils/constants/app_images.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    initState(){

    }
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: [
          AppBackground(),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.26,
                width: size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    CircleAvatar(
                      maxRadius: 60,
                      minRadius: 30,
                      child: Image.asset(AppImages.login),
                    ),
                    SizedBox(
                      height: size.height * 0.011,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Kamlesh Kumar",
                          style: TextStyle(
                              fontFamily: "Roboto_Bold",
                              fontSize: 30,
                              color: Colors.black54),
                        ),
                      ),
                      Image.asset(
                        AppImages.checked,
                        height: 20,
                      )
                    ])
                  ],
                ),
              ),
              Container(
                height: size.height * 0.64,
                // color: Colors.black12,
                width: size.width * 0.95,
                child: Column(children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: size.height * 0.05,left: size.width*0.01,right: size.width*0.01),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(AppImages.qr),
                                Padding(padding: EdgeInsets.only(left: 15),
                                child:Text('QR Code',style: TextStyle(fontFamily: "Roboto_Medium"),)),
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(AppImages.id_card),
                                    Padding(padding: EdgeInsets.only(left: 15),
                                        child: Text('Student Card',style: TextStyle(fontFamily: "Roboto_Medium"),)),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.59 - 50,
                    child: ListView(
                      padding: EdgeInsets.only(top: 10),
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Display Name",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh Kumar",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh.slinfy@gmail.com",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Phone",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("+918219416633",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Father Name",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh Kumar",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "DOJ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh Kumar",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "DOB",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh Kumar",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Technology",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Flutter",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ID",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("B1/S1",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Display Name",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh Kumar",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Display Name",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto_Medium",
                                              color: Colors.black54),
                                        ),
                                        Text("Kamlesh Kumar",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Roboto_Medium",
                                                color: Colors.black87))
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.26),
              height: size.height * 0.08,
              width: size.width * 0.93,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a',
                      ),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              child: SizedBox(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.checked,
                                width: 20,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Wrap(
                                    children: [Text(
                                      'Student ID Number',
                                      style: TextStyle(
                                          fontFamily: "Roboto_Medium",
                                          fontSize: 15),
                                    ),
                                  ])),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Text(
                          'B1/S1',
                          style: TextStyle(
                              fontFamily: "Roboto_Medium", fontSize: 15),
                        ))
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  AppImages.check,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Wrap(
                                    children:[ Text(
                                      'Student Phone Number',
                                      style: TextStyle(
                                          fontFamily: "Roboto_Medium",
                                          fontSize: 15),
                                    ),
                                  ])),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Text(
                          '+918219416633',
                          style: TextStyle(
                              fontFamily: "Roboto_Medium", fontSize: 15),
                        ))
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
