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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(movie.cover),
          alignment: Alignment.topRight,
        ),
      ),
      height: 800,
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      margin: const EdgeInsets.only(
        bottom: 71,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 36,
            ),
            child: Image.asset(
              movie.logo,
              width: 576,
              height: 228,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            width: 886,
            margin: const EdgeInsets.only(
              bottom: 36,
            ),
            child: Text(
              textAlign: TextAlign.center,
              movie.shortDesc,
              style: MovieTextStyle.mainText,
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
                margin: const EdgeInsets.only(
                  right: 24,
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
