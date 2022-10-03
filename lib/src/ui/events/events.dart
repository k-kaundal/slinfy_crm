import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Stack(
        children: [
          AppBackground(),
        ],
      ),
    );
  }
}
