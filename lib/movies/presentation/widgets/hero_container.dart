import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/utils.dart';
import '../../domain/model/movie.dart';
import 'button_tv.dart';

class HeroContainer extends StatelessWidget {
  final Movie movie;

  const HeroContainer({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(movie.cover),
          alignment: Alignment.topRight,
        ),
      ),
      height: 800 / dpr,
      padding: EdgeInsets.only(
        bottom: 24 / dpr,
      ),
      margin: EdgeInsets.only(
        bottom: 71 / dpr,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 36 / dpr,
            ),
            child: Image.asset(
              movie.logo,
              width: 576 / dpr,
              height: 228 / dpr,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            width: 886 / dpr,
            margin: EdgeInsets.only(
              bottom: 24 / dpr,
            ),
            child: Text(
              textAlign: TextAlign.center,
              movie.shortDesc,
              style: Utils.getTextStyle(40, dpr),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonTV(
                label: 'Смотреть',
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    MovieAppColors.gradientStart,
                    MovieAppColors.gradientEnd,
                  ],
                ),
                margin: EdgeInsets.only(
                  right: 24 / dpr,
                ),
                onPressed: () {},
              ),
              ButtonTV(
                label: 'О фильме',
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: MovieAppColors.gradientFull,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
