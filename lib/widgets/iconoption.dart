import 'package:flutter/material.dart';

class IconOption extends StatelessWidget {
  final bool oneselected;

  final Widget child;

  const IconOption({super.key, required this.oneselected, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: oneselected ? const Color(0xFF0606B0) : const Color(0xFF190D72),
      ),
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }
}
