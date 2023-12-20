import 'package:flutter/material.dart';
import 'package:tvoe_tv_app/core/constants.dart';

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
              bottom: 36 / dpr,
            ),
            child: Text(
              textAlign: TextAlign.center,
              movie.shortDesc,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'TT Norms Pro',
                fontSize: 40 / dpr,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonTV(
                label: 'Смотреть',
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff6A11CB),
                    Color(0xff2575fc),
                  ],
                ),
                margin: EdgeInsets.only(
                  right: 24 / dpr,
                ),
                onPressed: () {},
              ),
              ButtonTV(
                label: 'О фильме',
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(10, 255, 255, 255),
                    Color.fromARGB(13, 255, 255, 255),
                    Color.fromARGB(10, 255, 255, 255)
                  ],
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
