import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/scan_qr.dart';
import 'package:qr_code/widgets/home/downlaod_button.dart';

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
            Text(Provider.of<ScanQrController>(context).qrContect),
            MyButton(
              child: MaterialButton(
                onPressed: () async {
                  String barcodeScanRes =
                      await FlutterBarcodeScanner.scanBarcode(
                          '#ffffff', 'cancel', true, ScanMode.QR);
                },
                child: const Text('Start Scan'),
              ),
            ),
          ],
        ));
  }
}
