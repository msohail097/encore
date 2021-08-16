import 'package:flutter/material.dart';

mixin AppColors {
  static const MaterialColor kSwatch = Colors.green;
  static const Color kRed = Color.fromRGBO(241, 67, 54,1.0);
  static const Color kGreenT = Color.fromRGBO(52, 168, 83, 0.8);
  static const Color kGrey = Color.fromRGBO(242, 242, 242,1.0);
  static const Color kBlue = Color.fromRGBO(50, 121, 182,1.0);
  static const Color kOrange = Color.fromRGBO(238, 173, 77,1.0);
  static const Color kPink = Color.fromRGBO(255, 222, 224,1.0);
  static const Color kGreen = Color.fromRGBO(92, 183, 92,1.0);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    String _hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (_hexColor.length == 6) {
      _hexColor = "FF$_hexColor";
    }
    return int.parse(_hexColor, radix: 16);
  }
}
