import 'package:flutter/material.dart';

class HandleForm with ChangeNotifier {
  Map<String, String> textForm = {'text': 'mahmoud'};
  Map<String, String> wifiForm = {
    'ssid': '',
    'password': '',
  };
  Map<String, String> dataForm = {
    'name': '',
    'email': '',
    'description': '',
    'age': '',
  };

  changeTextFieldValue(String value, input) {
    if (input == 'text') {
      textForm['text'] = value;
    } else if (input == 'wifi_ssid') {
      wifiForm['ssid'] = value;
    }
    if (input == 'wifi_pass') {
      wifiForm['password'] = value;
    } else if (input == 'data_name') {
      dataForm['name'] = value;
    } else if (input == 'data_email') {
      dataForm['email'] = value;
    } else if (input == 'data_des') {
      dataForm['description'] = value;
    } else if (input == 'data_age') {
      dataForm['age'] = value;
    }
    notifyListeners();
  }
}
