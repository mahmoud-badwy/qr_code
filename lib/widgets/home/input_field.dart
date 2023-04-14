import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/controller/text_form.dart';

class InputField extends StatelessWidget {
  final String type;
  final String hint;

  const InputField({super.key, required this.type, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onChanged: (value) {
        Provider.of<HandleForm>(context, listen: false)
            .changeTextFieldValue(value, type);
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xABFFFFFF),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white10,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white10,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
