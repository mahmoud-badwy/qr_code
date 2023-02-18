import 'package:flutter/material.dart';
import 'package:qr_code/widgets/iconoption.dart';
import 'package:qr_code/widgets/colors.dart';
import 'package:qr_code/widgets/image_suffix.dart';

class HomeScreen extends StatefulWidget {
  static String screenRoute = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool pattern1 = true;
  bool pattern2 = false;
  bool pattern3 = false;
  bool pattern4 = false;
  bool white = false;
  bool red = true;
  bool tial = false;
  bool green = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0a033a),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            print('done');
          },
          icon: const Icon(Icons.qr_code_scanner),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xff0c0351),
              child: ExpansionTile(
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
                        IconOption(
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
                        IconOption(
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
                        IconOption(
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
                        IconOption(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageSuffix(
                  text: 'PNG',
                ),
                ImageSuffix(
                  text: 'JPG',
                ),
                ImageSuffix(
                  text: 'SVG',
                )
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  // TextFormField(
                  //   decoration: InputDecoration(bod),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
