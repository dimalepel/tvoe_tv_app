import 'package:flutter/material.dart';

abstract class Utils {
  static TextStyle getTextStyle(int fontSize, double dpr,
      {FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: Colors.white,
      fontFamily: 'TT Norms Pro',
      fontSize: fontSize / dpr,
      fontWeight: fontWeight,
    );
  }
}
