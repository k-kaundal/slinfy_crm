import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class GetAttendance extends StatefulWidget {
  const GetAttendance({Key? key}) : super(key: key);

  @override
  State<GetAttendance> createState() => _GetAttendanceState();
}

class _GetAttendanceState extends State<GetAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Records'),
      ),
      body: Stack(
        children: [
          AppBackground(),
        ],
      ),
    );
  }
}
