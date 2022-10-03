import 'package:flutter/material.dart';

import '../commons/app_background.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  State<AddDetails> createState() {
    return _AddDetailsState();
  }
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Form Builder Example')),
      body: Container(
        child: Stack(
          children: [
            AppBackground(),
            Column(
            children: [
              SizedBox(height: 20,),
              Form(
                  child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xC87294E8),
                            blurStyle: BlurStyle.outer,
                            blurRadius: 2,
                            spreadRadius: 5,
                            offset: Offset.infinite
                          )
                        ],
                        color: Color(0xF9EDEFF3)),
                    child: TextFormField(

                      decoration: InputDecoration(
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: Text('Name'),
                          // suffixIcon: Icon(Icons.add)
                          contentPadding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                          // prefix: Icon(Icons.add),
                          prefixIcon: Icon(Icons.add),
                          // filled: true,
                          border: InputBorder.none),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(label: Text('Name')),
                  ),
                ],
              ))
            ],
          ),
        ]),
      ),
    );
  }
}
