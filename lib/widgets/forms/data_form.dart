import 'package:flutter/material.dart';
import 'package:qr_code/widgets/home/input_field.dart';

class DataForm extends StatelessWidget {
  const DataForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputField(
          hint: 'name',
          type: 'data_name',
        ),
        SizedBox(
          height: 10,
        ),
        InputField(
          hint: 'email',
          type: 'data_email',
        ),
        SizedBox(
          height: 10,
        ),
        InputField(
          hint: 'age',
          type: 'data_age',
        ),
        SizedBox(
          height: 10,
        ),
        InputField(
          hint: 'description',
          type: 'data_des',
        )
      ],
    );
  }
}
