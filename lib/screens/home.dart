import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/text_form.dart';
import 'package:qr_code/controller/toggle_colors.dart';
import 'package:qr_code/controller/toggle_type.dart';
import 'package:qr_code/screens/scan_qr.dart';
import 'package:qr_code/widgets/forms/data_form.dart';
import 'package:qr_code/widgets/forms/text_form.dart';
import 'package:qr_code/widgets/forms/wifi_form.dart';
// import 'package:qr_code/screens/scan_qr.dart';
import 'package:qr_code/widgets/select_colors.dart';
import 'package:qr_code/widgets/home/image.dart';
import 'package:qr_code/widgets/iconoption.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String screenRoute = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backcolor = Colors.white;
  Color forecolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    HandleForm formProvider = Provider.of<HandleForm>(context);
    ToggleType toggleTypeProvider = Provider.of<ToggleType>(context);
    ToggleType toggleTypeProviderFunction =
        Provider.of<ToggleType>(context, listen: false);
    ToggleColors toggleColorsProvider = Provider.of<ToggleColors>(context);
    ToggleColors toggleColorsProviderFunction =
        Provider.of<ToggleColors>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0XFF0a033a),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(ScanQrScreen.screenRoute);
          },
          icon: const Icon(Icons.qr_code_scanner),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Center(
              child: QrImage(
                data: toggleTypeProvider.type == 1
                    ? formProvider.textForm['text']!
                    : toggleTypeProvider.type == 2
                        ? "SSID: ${formProvider.wifiForm['ssid']}\nPassword: ${formProvider.wifiForm['password']}"
                        : "Name: ${formProvider.dataForm['name']}\nAge: ${formProvider.dataForm['age']}\nEmail: ${formProvider.dataForm['email']}\nDescription: ${formProvider.dataForm['description']}",
                errorCorrectionLevel: 3,
                backgroundColor: toggleColorsProvider.selectedBgColor,
                foregroundColor: toggleColorsProvider.selectedFgColor,
                size: 250,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xff0c0351),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 25),
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                title: const Text(
                  'COLOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColorOption(
                          color: Colors.black,
                          oneselected:
                              toggleColorsProvider.checkCurruntColor('black'),
                          child: GestureDetector(
                            onTap: () {
                              toggleColorsProviderFunction.changeColor('black');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.width / 10,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ColorOption(
                          oneselected:
                              toggleColorsProvider.checkCurruntColor('red'),
                          color: Colors.red,
                          child: GestureDetector(
                            onTap: () {
                              toggleColorsProviderFunction.changeColor('red');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.width / 10,
                            ),
                          ),
                        ),
                        ColorOption(
                          color: Colors.teal,
                          oneselected:
                              toggleColorsProvider.checkCurruntColor('teal'),
                          child: GestureDetector(
                            onTap: () {
                              toggleColorsProviderFunction.changeColor('teal');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.width / 10,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ColorOption(
                          color: Colors.green,
                          oneselected:
                              toggleColorsProvider.checkCurruntColor('green'),
                          child: GestureDetector(
                            onTap: () {
                              toggleColorsProviderFunction.changeColor('green');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.width / 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xff0c0351),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 25),
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                title: const Text(
                  'TYPE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconOption(
                          oneselected:
                              toggleTypeProvider.checkTypeIsSelected(1),
                          text: 'Text',
                          child: IconButton(
                            onPressed: () {
                              toggleTypeProviderFunction.changeType(1);
                            },
                            icon: const Icon(
                              Icons.text_format_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption(
                          oneselected:
                              toggleTypeProvider.checkTypeIsSelected(2),
                          text: 'WiFi',
                          child: IconButton(
                            onPressed: () {
                              toggleTypeProviderFunction.changeType(2);
                            },
                            icon: const Icon(
                              Icons.wifi_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption(
                          oneselected:
                              toggleTypeProvider.checkTypeIsSelected(3),
                          text: 'Form Data',
                          child: IconButton(
                            onPressed: () {
                              toggleTypeProviderFunction.changeType(3);
                            },
                            icon: const Icon(
                              Icons.data_object,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const ImageSuffix2(),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                if (toggleTypeProvider.type == 1)
                  const TextForm()
                else
                  toggleTypeProvider.type == 2
                      ? const WifiForm()
                      : const DataForm(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
