import 'package:flutter/material.dart';
import 'package:slinfy_crm/src/ui/commons/app_background.dart';
class GetCertificate extends StatefulWidget {
  const GetCertificate({Key? key}) : super(key: key);

  @override
  State<GetCertificate> createState() => _GetCertificateState();
}

class _GetCertificateState extends State<GetCertificate> {
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
