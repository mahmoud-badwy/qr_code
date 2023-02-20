import 'package:flutter/material.dart';

class ImageSuffix extends StatelessWidget {
  final String text;
  final Color color;
  const ImageSuffix({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: color != const Color(0xff0c0351)
              ? color
              : const Color(0xff0c0351),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
