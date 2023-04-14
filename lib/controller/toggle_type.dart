import 'package:flutter/material.dart';

class ToggleType with ChangeNotifier {
  int type = 2;
  bool checkTypeIsSelected(int num) {
    if (num == type) {
      return true;
    } else {
      return false;
    }
  }

  void changeType(int newType) {
    type = newType;
    notifyListeners();
  }
}
