import 'package:flutter/material.dart';

class ScanQrScreen extends StatefulWidget {
  static String screenRoute ='scan_qr' ;
  const ScanQrScreen({super.key});

  @override
  State<ScanQrScreen> createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('scan QR'),),
    );
  }
}
