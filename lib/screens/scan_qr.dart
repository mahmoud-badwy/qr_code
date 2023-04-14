import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrScreen extends StatelessWidget {
  static String screenRoute = 'scan_qr';
  const ScanQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('scan QR'),
        ),
        body: Column(
          children: [
            const Text(''),
            ElevatedButton(
              onPressed: () async {
                await FlutterBarcodeScanner.getBarcodeStreamReceiver(
                        "#ff6666", "Cancel", false, ScanMode.DEFAULT)
                    ?.listen((barcode) {
                  /// barcode to be used
                });
              },
              child: const Text('scan'),
            )
          ],
        ));
  }
}
