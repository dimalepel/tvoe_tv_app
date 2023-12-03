import 'package:flutter/material.dart';

class MovieTextStyle {
  static TextStyle mainText = const TextStyle(
    color: Colors.white,
    fontFamily: 'TT Norms Pro',
    fontSize: 40,
    fontWeight: FontWeight.w500,
  );
  static TextStyle buttonLabel = const TextStyle(
    color: Colors.white,
    fontFamily: 'TT Norms Pro',
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );
  static TextStyle ratingLabel = const TextStyle(
    color: Colors.white,
    fontFamily: 'TT Norms Pro',
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
}

class MovieAppColors {
  static Color black = const Color(0xff09090c);
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
