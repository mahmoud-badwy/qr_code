import 'package:flutter/material.dart';
import 'package:qr_code/widgets/select_colors.dart';
import 'package:qr_code/widgets/home/image.dart';
import 'package:qr_code/widgets/iconoption.dart';
import 'package:qr_code/data/variablesbank.dart';
import 'package:qr_code/widgets/types/form_data.dart';
import 'package:qr_code/widgets/types/text.dart';
import 'package:qr_code/widgets/types/wifi.dart';

class HomeScreen extends StatefulWidget {
  static String screenRoute = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget type = const TExt();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0a033a),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.qr_code_scanner),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
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
                  'PATTERN',
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
                        IconOption2(
                          oneselected: pattern1,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                pattern1 = true;
                                pattern2 = false;
                                pattern3 = false;
                                pattern4 = false;
                              });
                            },
                            icon: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption2(
                          oneselected: pattern2,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                pattern1 = false;
                                pattern2 = true;
                                pattern3 = false;
                                pattern4 = false;
                              });
                            },
                            icon: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption2(
                          oneselected: pattern3,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                pattern1 = false;
                                pattern2 = false;
                                pattern3 = true;
                                pattern4 = false;
                              });
                            },
                            icon: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconOption2(
                          oneselected: pattern4,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                pattern1 = false;
                                pattern2 = false;
                                pattern3 = false;
                                pattern4 = true;
                              });
                            },
                            icon: const Icon(
                              Icons.home,
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
                                type = const TExt();
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

                                type = const WiFi();
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
                                type = const FormData();
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
                type,
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA19999),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color: unSelectedColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Download Code',
                          style: TextStyle(color: unSelectedColor),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
