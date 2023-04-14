import 'package:flutter/material.dart';
import 'package:qr_code/widgets/home/input_field.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const InputField(
      hint: 'enter your text',
      type: 'text',
    );
  }
}
