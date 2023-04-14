import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/toggle_colors.dart';

class DownlaodButton extends StatelessWidget {
  const DownlaodButton({super.key});

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
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.download,
              color: myProvider.unSelectedColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Download Code',
              style: TextStyle(color: myProvider.unSelectedColor),
            ),
          ],
        ),
      ),
    );
  }
}
