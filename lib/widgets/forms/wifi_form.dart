import 'package:flutter/material.dart';
import 'package:qr_code/widgets/home/input_field.dart';

class WifiForm extends StatelessWidget {
  const WifiForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputField(
          hint: 'SSID',
          type: 'wifi_ssid',
        ),
        SizedBox(
          height: 10,
        ),
        InputField(
          hint: 'Password',
          type: 'wifi_pass',
        )
      ],
    );
  }
}
