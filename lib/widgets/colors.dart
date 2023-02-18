import 'package:flutter/material.dart';

class ColorOption extends StatelessWidget {
  final bool oneselected;
  final Color color;

  final Widget child;

  const ColorOption(
      {super.key,
      required this.oneselected,
      required this.child,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: oneselected ? Colors.white12 : Colors.transparent,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(5),
      child: child,
    );
  }
}
