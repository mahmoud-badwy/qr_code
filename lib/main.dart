import 'package:flutter/material.dart';
import 'package:qr_code/screens/scan_qr.dart';
import 'package:qr_code/screens/home.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code',
      initialRoute: HomeScreen.screenRoute,
      routes: {
        ScanQrScreen.screenRoute: (context) => const ScanQrScreen(),
        HomeScreen.screenRoute: (context) => const HomeScreen(),
      },
    );
  }
}
