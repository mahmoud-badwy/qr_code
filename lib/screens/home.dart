import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/text_form.dart';
import 'package:qr_code/screens/scan_qr.dart';
import 'package:qr_code/widgets/home/input_field.dart';
// import 'package:qr_code/screens/scan_qr.dart';
import 'package:qr_code/widgets/select_colors.dart';
import 'package:qr_code/widgets/home/image.dart';
import 'package:qr_code/widgets/iconoption.dart';
import 'package:qr_code/data/variablesbank.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String screenRoute = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int type = 1;
  Color backcolor = Colors.white;
  Color forecolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    HandleForm formProvider = Provider.of<HandleForm>(context);
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
                data: type == 1
                    ? formProvider.textForm['text']!
                    : type == 2
                        ? "SSID: ${formProvider.wifiForm['ssid']}\nPassword: ${formProvider.wifiForm['password']}"
                        : "Name: ${formProvider.dataForm['name']}\nAge: ${formProvider.dataForm['age']}\nEmail: ${formProvider.dataForm['email']}\nDescription: ${formProvider.dataForm['description']}",
                errorCorrectionLevel: 3,
                backgroundColor: backcolor,
                foregroundColor: forecolor,
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
                          color: Colors.white,
                          oneselected: white,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                forecolor = Colors.black;
                                white = true;
                                red = false;
                                tial = false;
                                green = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.width / 10,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ColorOption(
                          oneselected: red,
                          color: Colors.red,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                forecolor = Colors.red;
                                red = true;
                                white = false;
                                tial = false;
                                green = false;
                              });
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
                          oneselected: tial,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                forecolor = Colors.teal;
                                tial = true;
                                red = false;
                                white = false;
                                green = false;
                              });
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
                          oneselected: green,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                forecolor = Colors.green;
                                green = true;
                                red = false;
                                tial = false;
                                white = false;
                              });
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
                          oneselected: type1,
                          text: 'Text',
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                type = 1;
                                type1 = true;
                                type2 = false;
                                type3 = false;
                                type4 = false;
                              });
                            },
                            icon: const Icon(
                              Icons.text_format_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption(
                          oneselected: type2,
                          text: 'WiFi',
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                type1 = false;
                                type2 = true;
                                type3 = false;
                                type4 = false;

                                type = 2;
                              });
                            },
                            icon: const Icon(
                              Icons.wifi_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption(
                          oneselected: type4,
                          text: 'Form Data',
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                type = 4;
                                type1 = false;
                                type2 = false;
                                type3 = false;
                                type4 = true;
                              });
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
                if (type == 1)
                  const InputField(
                    hint: 'enter your hint',
                    type: 'text',
                  )
                else
                  type == 2
                      ? Column(
                          children: const [
                            InputField(
                              hint: 'SSID',
                              type: 'wifi_ssid',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InputField(
                              hint: 'Password',
                              type: 'wifi_pass',
                            )
                          ],
                        )
                      : Column(
                          children: const [
                            InputField(
                              hint: 'name',
                              type: 'data_name',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InputField(
                              hint: 'email',
                              type: 'data_email',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InputField(
                              hint: 'age',
                              type: 'data_age',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InputField(
                              hint: 'description',
                              type: 'data_des',
                            )
                          ],
                        ),
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
