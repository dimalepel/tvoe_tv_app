import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tvoe_tv_app/core/constants.dart';
import 'package:tvoe_tv_app/movies/data/repositories/movie_repository.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/button_tv_mini.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/hero_container.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/logo.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/raiting_card_tv.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/tv_card_film.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/tv_navigation.dart';

import '../../core/utils.dart';
import '../domain/model/movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return Scaffold(
      backgroundColor: MovieAppColors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                // Hero
                Consumer<MovieRepository>(
                  builder: (context, movieRepository, child) {
                    return HeroContainer(
                      movie: movieRepository.heroMovie,
                    );
                  },
                ),
                // New movies
                Container(
                  margin: EdgeInsets.only(
                    bottom: (120 / dpr),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 14 / dpr,
                        ),
                        padding: EdgeInsets.only(
                          left: 214 / dpr,
                        ),
                        child: Text(
                          'Новинки',
                          style: Utils.getTextStyle(
                            40,
                            dpr,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 667 / dpr,
                        child: Consumer<MovieRepository>(
                          builder: (context, movieRepository, child) {
                            return ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: movieRepository.newMovies.length,
                              itemBuilder: (_, idx) {
                                Movie movie = movieRepository.newMovies[idx];

                                return TVCardFilm(
                                  movie: movie,
                                  idx: idx,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // Top-10
                Container(
                  margin: EdgeInsets.only(
                    bottom: 110 / dpr,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 20 / dpr,
                        ),
                        padding: EdgeInsets.only(
                          left: 214 / dpr,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 200 / dpr,
                              height: 52 / dpr,
                              margin: EdgeInsets.only(
                                right: 20 / dpr,
                              ),
                              child: SvgPicture.asset(
                                'assets/images/svgs/icon--top-10.svg',
                              ),
                            ),
                            Text(
                              'просмотров за неделю',
                              style: Utils.getTextStyle(40, dpr,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 667 / dpr,
                        child: Consumer<MovieRepository>(
                          builder: (context, movieRepository, child) {
                            return ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: movieRepository.topTenMovies.length,
                              itemBuilder: (_, idx) {
                                Movie movie = movieRepository.topTenMovies[idx];

                                return RatingCardTV(
                                  movie: movie,
                                  idx: idx,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 60 / dpr,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const LogoImg(
                      logo: 'assets/images/pic--logo.png',
                    ),
                    TVNavigation(
                      navigation: MovieAppNavigation.navigationIcons,
                      margin: EdgeInsets.only(
                        bottom: 40 / dpr,
                      ),
                    ),
                    ButtonTVMini(
                      navigationElement: 'assets/images/svgs/icon--arrow.svg',
                      onTap: () {
                        _scrollController.animateTo(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
