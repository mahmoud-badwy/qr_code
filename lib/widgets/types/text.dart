import 'package:flutter/material.dart';

class TExt extends StatelessWidget {
  const TExt({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onChanged: (value) {},
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'enter your Text',
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
