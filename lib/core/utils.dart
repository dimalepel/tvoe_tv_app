import 'package:flutter/material.dart';

abstract class Utils {
  static TextStyle getTextStyle(int fontSize, double dpr) {
    return TextStyle(
      color: Colors.white,
      fontFamily: 'TT Norms Pro',
      fontSize: fontSize / dpr,
      fontWeight: FontWeight.w500,
    );
  }
}
