import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slinfy_crm/src/utils/helpers/responsive_helper.dart';
import 'package:slinfy_crm/src/utils/helpers/styles.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scrollbar(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          // height: context.height,
          height: size.height,
          width: size.width,
          // width: context.width,
          child: ResponsiveHelper.isMobile(context)
              ? Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                      children: [Image.asset('assets/images/login.png',width: size.width*0.5,height: size.height*0.5,),
                        Text("Enter your login details"),
                        loginWidget(context)]))
              : ResponsiveHelper.isWeb()
                  ? Container(
                      child: Column(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height * 0.1,
                            color: Colors.blue,
                          ),
                          Container(
                            width: size.width,
                            height: size.height * 0.9,
                            color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  color: Colors.yellow,
                                )),
                                Expanded(
                                    child: Container(
                                  width: size.width,
                                  height: size.height,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTD0pM5zXcJDw4E1V3uxVx3MYkY96kqXZ1OJIvkEF3OU1KIMJMMjbV1XyO4S0B2HOhgSM&usqp=CAU'),
                                          fit: BoxFit.cover)),
                                  child: Row(children: [
                                    Expanded(
                                      flex: 9,
                                      child: Container(
                                          width: size.width,
                                          height: size.height,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              border: Border(
                                                  right: BorderSide.none),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20))),
                                          margin: EdgeInsets.only(
                                              left: size.width * 0.15,
                                              // right: size.width * 0.05,
                                              top: size.height * 0.1,
                                              bottom: size.height * 0.1),
                                          child: Padding(
                                              padding: EdgeInsets.all(20),
                                              child: loginWidget(context))),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          width: size.width,
                                          height: size.height,
                                          color: Colors.white,
                                        )),
                                  ]),
                                ))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(),
        ),
      )),
    );
  }

  Widget loginWidget(BuildContext context) {
    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: robotoBlack,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    //add prefix icon
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    hintText: "Enter email ID",
                    label: Text('Email'),
                    border: InputBorder.none
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Theme.of(context).dividerColor))
                    ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Divider(
                height: 0,
                color: Theme.of(context).dividerColor,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  label: Text("Password"),
                  border: InputBorder.none,
                  // border: OutlineInputBorder(
                  //     borderSide: BorderSide(
                  //         color: Theme.of(context).dividerColor)),
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.grey,
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        if (isPassword) {
                          isPassword = false;
                        } else {
                          isPassword = true;
                        }
                        isPassword != isPassword;
                      });
                    },
                    child: Icon(isPassword
                        ? Icons.visibility_off
                        : Icons.remove_red_eye),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                obscuringCharacter: "*",
                obscureText: isPassword,
                style: robotoBlack,
              ),
              Divider(
                height: 0,
                color: Theme.of(context).dividerColor,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side:
                            BorderSide(color: Theme.of(context).dividerColor)),
                  ),
                ),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: Container(
                    width: context.width * 0.8,
                    child: Center(child: const Text('Submit'))),
              ),
            ],
          )),
    );
  }
}
