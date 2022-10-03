import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: Stack(
        children: [
          AppBackground(),
        ],
      ),
    );
  }
}
