import 'package:flutter/material.dart';
import 'package:tvoe_tv_app/core/constants.dart';

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
    return Container(
      margin: EdgeInsets.only(
        bottom: marginBottom,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (isFocused)
            Positioned(
              top: -4,
              right: -4,
              bottom: -4,
              left: -4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff5712B1),
                      Color(0xff2B6CFA),
                    ],
                  ),
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 4,
                color:
                    (isFocused) ? const Color(0xff09090C) : Colors.transparent,
              ),
              color: (isFocused) ? const Color(0xff09090C) : Colors.transparent,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                poster,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (rating > 0)
            Positioned(
              top: 32,
              left: 32,
              child: Container(
                width: 75,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff6A11CB),
                      Color(0xff2575FC),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    rating.toString(),
                    style: MovieTextStyle.ratingLabel,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
