import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/scan_qr.dart';
import 'package:qr_code/controller/text_form.dart';
import 'package:qr_code/controller/toggle_colors.dart';
import 'package:qr_code/controller/toggle_type.dart';
import 'package:qr_code/screens/home.dart';
import 'package:qr_code/screens/scan_qr.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HandleForm(),
        ),
        ChangeNotifierProvider(
          create: (context) => ToggleType(),
        ),
        ChangeNotifierProvider(
          create: (context) => ToggleColors(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScanQrController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Code',
        initialRoute: HomeScreen.screenRoute,
        routes: {
          ScanQrScreen.screenRoute: (context) => const ScanQrScreen(),
          HomeScreen.screenRoute: (context) => const HomeScreen(),
        },
      ),
    );
  }
}
