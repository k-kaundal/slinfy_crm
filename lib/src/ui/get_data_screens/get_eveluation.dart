import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class GetEveluation extends StatefulWidget {
  const GetEveluation({Key? key}) : super(key: key);

  @override
  State<GetEveluation> createState() => _GetEveluationState();
}

class _GetEveluationState extends State<GetEveluation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eveluation'),
      ),
      body: Stack(
        children: [
          AppBackground(),
        ],
      ),
    );
  }
}
