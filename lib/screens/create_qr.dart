import 'package:flutter/material.dart';

class CreateQrScreen extends StatefulWidget {
  static String screenRoute ='create_qr' ;
  const CreateQrScreen({super.key});

  @override
  State<CreateQrScreen> createState() => _CreateQrScreenState();
}

class _CreateQrScreenState extends State<CreateQrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('scan QR'),),
    );
  }
}
