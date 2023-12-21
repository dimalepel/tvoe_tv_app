import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/utils.dart';

class ImgCard extends StatelessWidget {
  final double marginBottom;
  final bool isFocused;
  final String poster;
  final double rating;

  const ImgCard({
    super.key,
    required this.marginBottom,
    required this.isFocused,
    required this.poster,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return Container(
      margin: EdgeInsets.only(
        bottom: marginBottom,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (isFocused)
            Positioned(
              top: -4 / dpr,
              right: -4 / dpr,
              bottom: -4 / dpr,
              left: -4 / dpr,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20 / dpr),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      MovieAppColors.gradientStart,
                      MovieAppColors.gradientEnd,
                    ],
                  ),
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20 / dpr),
              border: Border.all(
                width: 4 / dpr,
                color:
                    (isFocused) ? const Color(0xff09090C) : Colors.transparent,
              ),
              color: (isFocused) ? const Color(0xff09090C) : Colors.transparent,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20 / dpr),
              child: Image.asset(
                poster,
                fit: BoxFit.cover,
                width: 398 / dpr,
                height: 597 / dpr,
              ),
            ),
          ),
          if (rating > 0)
            Positioned(
              top: 32 / dpr,
              left: 32 / dpr,
              child: Container(
                width: 75 / dpr,
                height: 48 / dpr,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12 / dpr),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      MovieAppColors.gradientStart,
                      MovieAppColors.gradientEnd,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    rating.toString(),
                    style: Utils.getTextStyle(28, dpr),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
