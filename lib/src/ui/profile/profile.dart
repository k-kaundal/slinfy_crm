import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.24,
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
                    Text(
                      "Kamlesh Kumar",
                      style: TextStyle(
                          fontFamily: "Roboto_Bold",
                          fontSize: 30,
                          color: Colors.black54),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.71,
                // color: Colors.black12,
                width: size.width*0.95,
                child: ListView(
                  children: [
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Display Name",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                Text("Kamlesh Kumar",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                              ],
                            ),
                              IconButton(onPressed: (){

                              }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                          ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Kamlesh.slinfy@gmail.com",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Phone",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("+918219416633",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Father Name",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Kamlesh Kumar",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DOJ",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Kamlesh Kumar",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DOB",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Kamlesh Kumar",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Technology",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Flutter",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("ID",style: TextStyle(fontSize: 13,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("B1/S1",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Display Name",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Kamlesh Kumar",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Display Name",style: TextStyle(fontSize: 15,fontFamily: "Roboto_Medium",color: Colors.black54),),
                                    Text("Kamlesh Kumar",style: TextStyle(fontSize: 20,fontFamily: "Roboto_Medium",color: Colors.black87))
                                  ],
                                ),
                                IconButton(onPressed: (){

                                }, icon: Icon(Icons.edit,size: 20,color: Colors.blue,),)
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.26),
              height: size.height * 0.06,
              width: size.width * 0.98,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [BoxShadow(color: Colors.black54)]),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: Colors.blue,
                        )),
                  ),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.blue,
                          ))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: Colors.blue,
                          ))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.blue,
                          )))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
