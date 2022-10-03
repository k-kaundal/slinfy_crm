import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task'),
      ),
      body: Stack(
        children: [
          AppBackground(),
        ],
      ),
    );
  }
}
