import 'package:flutter/material.dart';

class ScanQrScreen extends StatelessWidget {
  static String screenRoute = 'scan_qr';
  const ScanQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('scan QR'),
      ),
    );
  }
}
