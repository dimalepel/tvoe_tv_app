import 'package:flutter/material.dart';

abstract class MovieAppColors {
  static Color black = const Color(0xff09090c);
  static Color gradientStart = const Color(0xff6A11CB);
  static Color gradientEnd = const Color(0xff2575FC);
  static List<Color> gradientFull = [
    const Color.fromARGB(10, 255, 255, 255),
    const Color.fromARGB(13, 255, 255, 255),
    const Color.fromARGB(10, 255, 255, 255)
  ];
}

class MovieAppNavigation {
  static List<String> navigationIcons = [
    'assets/images/svgs/icon--search.svg',
    'assets/images/svgs/icon--home.svg',
    'assets/images/svgs/icon--movie.svg',
    'assets/images/svgs/icon--tv.svg',
    'assets/images/svgs/icon--heart.svg',
    'assets/images/svgs/icon--user.svg',
  ];
}
