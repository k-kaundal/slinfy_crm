import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class GetConfirmation extends StatefulWidget {
  const GetConfirmation({Key? key}) : super(key: key);

  @override
  State<GetConfirmation> createState() => _GetConfirmationState();
}

class _GetConfirmationState extends State<GetConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certificate'),
      ),
      body: Stack(
        children: [
          AppBackground(),
        ],
      ),
    );
  }
}
