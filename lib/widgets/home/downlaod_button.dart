import 'package:flutter/material.dart';
import 'package:qr_code/data/variablesbank.dart';

class DownlaodButton extends StatelessWidget {
  const DownlaodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
