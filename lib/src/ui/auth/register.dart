import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FirebaseAuth auth  = FirebaseAuth.instance;
  TextEditingController email  = TextEditingController();
  TextEditingController password = TextEditingController();



  register(){

    auth.createUserWithEmailAndPassword(email: email.text.trim() , password: password.text.trim());

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: size.width,
        color: Colors.green,
        child:Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter email id "
              ),
            ),
            TextField(
              controller: password,
decoration: InputDecoration(
  hintText: "Enter password"
),
            ),
            ElevatedButton(onPressed: (){
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: ,));
            }, child: Text("Click"))
          ],
        )


        // ListView.builder(
        //   itemCount: 7,
        //   itemBuilder: (BuildContext context, int index) {
        //     return  Container(
        //       margin: EdgeInsets.all(10),
        //       width: size.width,
        //       height: 50,
        //       color: Colors.blue,
        //     );
        //   },
        //   // children: [
        //   //
        //   //   Container(
        //   //     margin: EdgeInsets.all(10),
        //   //     width: size.width,
        //   //     height: 50,
        //   //     color: Colors.blue,
        //   //   ), Container(
        //   //     margin: EdgeInsets.all(10),
        //   //     width: size.width,
        //   //     height: 50,
        //   //     color: Colors.blue,
        //   //   ),
        //   //
        //   // ],
        // ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     //
        //     // Text("Demo"),
        //     //
        //     // Row(
        //     //   mainAxisAlignment: MainAxisAlignment.center,
        //     //   children: [
        //     //     Text("Demo"), Text("Demo"), Text("Demo"), Text("Demo")
        //     //
        //     //   ],
        //     // ),
        //     // Stack(
        //     //   children: [
        //     //     Container(
        //     //       width: 200,
        //     //       height: 200,color: Colors.red,
        //     //     ),
        //     //     Container(
        //     //       width: 100,
        //     //       height: 100,color: Colors.blue,
        //     //     ),
        //     //   ],
        //     // )
        //   ],
        // ),
       ),
    );
  }
}
