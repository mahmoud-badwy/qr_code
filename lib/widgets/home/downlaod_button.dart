import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/toggle_colors.dart';

class MyButton extends StatelessWidget {
  final Widget child;

  const MyButton({
    super.key,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    ToggleColors myProvider = Provider.of<ToggleColors>(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
        color: const Color(0xFFA19999),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
