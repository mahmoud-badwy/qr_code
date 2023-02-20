import 'package:flutter/material.dart';
import 'package:qr_code/data/variablesbank.dart';

class IconOption extends StatelessWidget {
  final bool oneselected;

  final Widget child;
  final String text;
  const IconOption(
      {super.key,
      required this.oneselected,
      required this.child,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: !oneselected ? unSelectedColor : selectedColor,
          ),
          padding: const EdgeInsets.all(10),
          child: child,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Color(0xAEFFFFFF)),
        )
      ],
    );
  }
}

class IconOption2 extends StatelessWidget {
  final bool oneselected;

  final Widget child;
  const IconOption2({
    super.key,
    required this.oneselected,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: !oneselected ? unSelectedColor : selectedColor,
      ),
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }
}
