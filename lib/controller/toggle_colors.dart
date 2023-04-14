import 'package:flutter/material.dart';

class ToggleColors with ChangeNotifier {
  String curruntColor = 'black';
  Map<String, Color> myColors = {
    'black': Colors.black,
    'red': Colors.red,
    'teal': Colors.teal,
    'green': Colors.green,
  };
  Color selectedBgColor = Colors.white;
  Color selectedFgColor = Colors.black;

  Color selectedColor = const Color.fromARGB(198, 40, 26, 146);
  Color unSelectedColor = const Color(0xff0c0351);

  bool checkCurruntColor(String color) {
    if (color == curruntColor) {
      return true;
    } else {
      return false;
    }
  }

  void changeColor(String color) {
    curruntColor = color;
    selectedFgColor = myColors[curruntColor]!;
    notifyListeners();
  }
}
