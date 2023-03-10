import 'package:flutter/material.dart';
import 'package:qr_code/data/variablesbank.dart';
import 'package:qr_code/widgets/image_suffix.dart';

class ImageSuffix2 extends StatefulWidget {
  const ImageSuffix2({super.key});

  @override
  State<ImageSuffix2> createState() => _ImageSuffix2State();
}

class _ImageSuffix2State extends State<ImageSuffix2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            if (!pngimage) {
              setState(() {
                svgimage = false;
                pngimage = true;
                jpgimage = false;
              });
            } else {
              setState(() {
                pngimage = true;
              });
            }
          },
          child: ImageSuffix(
            text: 'PNG',
            color: !pngimage ? unSelectedColor : selectedColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (!jpgimage) {
              setState(() {
                svgimage = false;
                pngimage = false;
                jpgimage = true;
              });
            } else {
              setState(() {
                svgimage = false;
                jpgimage = false;
                pngimage = true;
              });
            }
          },
          child: ImageSuffix(
            text: 'JPG',
            color: !jpgimage ? unSelectedColor : selectedColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (!svgimage) {
              setState(() {
                svgimage = true;
                pngimage = false;
                jpgimage = false;
              });
            } else {
              setState(() {
                svgimage = false;
                jpgimage = false;
                pngimage = true;
              });
            }
          },
          child: ImageSuffix(
            text: 'SVG',
            color: !svgimage ? unSelectedColor : selectedColor,
          ),
        ),
      ],
    );
  }
}
